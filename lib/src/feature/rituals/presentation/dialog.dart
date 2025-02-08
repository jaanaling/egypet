import 'package:egypet_trip/src/feature/rituals/utils/dialog_processor.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  DialogProcessor dialogProcessor = DialogProcessor();
  late bool isEnglish = false;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    dialogProcessor.speechInit();
  }

  Future<void> stopListen() async {
    await dialogProcessor.stopListening();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      top: false,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 11,
                right: 11,
                top: 16,
                bottom: 120,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ValueListenableBuilder<bool>(
                      valueListenable: dialogProcessor.notifierDialog,
                      builder: (context, value, child) {
                        if (value) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            scrollController.animateTo(
                              scrollController.position.maxScrollExtent,
                              duration: const Duration(seconds: 2),
                              curve: Curves.fastOutSlowIn,
                            );
                          });
                        }
                        return ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(14),
                            bottom: Radius.circular(3),
                          ),
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                ListView.separated(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: dialogProcessor.messages.length,
                                  separatorBuilder: (__, _) => const Gap(8),
                                  itemBuilder: (context, index) {
                                    final message =
                                        dialogProcessor.messages[index];
                                    final isEnglish =
                                        message['language'] == 'en-US';
                                    return Align(
                                      alignment: !isEnglish
                                          ? Alignment.centerLeft
                                          : Alignment.centerRight,
                                      child: ChatBubble(
                                        isEnglish: isEnglish,
                                        onListen: () =>
                                            dialogProcessor.speakText(
                                          message['message']!,
                                          message['language']!,
                                        ),
                                        text: message['message']!,
                                      ),
                                    );
                                  },
                                ),
                                const Gap(8),
                                if (value)
                                  Align(
                                    alignment: isEnglish
                                        ? Alignment.centerLeft
                                        : Alignment.centerRight,
                                    child: ChatBubleAnimation(
                                        isEnglish: isEnglish),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MicrophoneButton(
                          isEnglish: true,
                          onListen: () {
                            dialogProcessor.startListening('en-US');
                            isEnglish = true;
                          },
                          onStopListen: () async {
                            await stopListen();
                          },
                        ),
                        MicrophoneButton(
                          isEnglish: false,
                          onListen: () {
                            dialogProcessor.startListening('ar-EG');
                            isEnglish = false;
                          },
                          onStopListen: () async {
                            await stopListen();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MicrophoneButton extends StatefulWidget {
  final bool isEnglish;
  final void Function() onListen;
  final void Function() onStopListen;

  const MicrophoneButton({
    super.key,
    required this.isEnglish,
    required this.onListen,
    required this.onStopListen,
  });

  @override
  _MicrophoneButtonState createState() => _MicrophoneButtonState();
}

class _MicrophoneButtonState extends State<MicrophoneButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );

    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPanStart(DragStartDetails details) {
    _controller.forward();
    widget.onListen();
  }

  void _onPanEnd(DragEndDetails details) {
    _controller.reverse();
    widget.onStopListen();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: _onPanStart,
      onPanEnd: _onPanEnd,
      child: ScaleTransition(
        scale: _animation,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
                right: 16,
                top: 17,
                bottom: 14,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.mic,
              ),
            ),
            const Gap(7),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isEnglish;
  final void Function() onListen;
  final String text;
  const ChatBubble({
    super.key,
    required this.isEnglish,
    required this.onListen,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    const bubbleBorderRadius = Radius.circular(14);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isEnglish)
          IconButton(
            onPressed: onListen,
            icon: Icon(
              Icons.volume_up,
            ),
          ),
        Container(
          constraints: BoxConstraints(
            maxWidth: width * 0.35,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: bubbleBorderRadius,
              topRight: bubbleBorderRadius,
              bottomLeft:
                  !isEnglish ? const Radius.circular(3) : bubbleBorderRadius,
              bottomRight:
                  !isEnglish ? bubbleBorderRadius : const Radius.circular(3),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: height * 0.02,
              bottom: height * 0.029,
              left: 14,
              right: 14,
            ),
            child: Text(
              textAlign: !isEnglish ? TextAlign.left : TextAlign.right,
              text,
            ),
          ),
        ),
        if (!isEnglish)
          IconButton(
            onPressed: onListen,
            icon: Icon(
              Icons.volume_up,
            ),
          ),
      ],
    );
  }
}

class ChatBubleAnimation extends StatefulWidget {
  final bool isEnglish;

  const ChatBubleAnimation({
    super.key,
    required this.isEnglish,
  });

  @override
  _ChatBubleAnimationState createState() => _ChatBubleAnimationState();
}

class _ChatBubleAnimationState extends State<ChatBubleAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat();
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const bubbleBorderRadius = Radius.circular(14);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      constraints: BoxConstraints(
        maxWidth: width * 0.35,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: bubbleBorderRadius,
          topRight: bubbleBorderRadius,
          bottomLeft:
              widget.isEnglish ? const Radius.circular(3) : bubbleBorderRadius,
          bottomRight:
              widget.isEnglish ? bubbleBorderRadius : const Radius.circular(3),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: height * 0.02,
          bottom: height * 0.029,
          left: 14,
          right: 14,
        ),
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(3, (index) {
                return Opacity(
                  opacity: _getOpacity(index),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.0),
                    child: Text(
                      '.',
                      style: TextStyle(fontSize: 42, color: Colors.black),
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }

  double _getOpacity(int dotIndex) {
    double currentValue = _animation.value;
    double opacity;

    if (dotIndex == 0) {
      opacity = currentValue <= 0.33 ? currentValue / 0.33 : 0.0;
    } else if (dotIndex == 1) {
      opacity = currentValue > 0.33 && currentValue <= 0.66
          ? (currentValue - 0.33) / 0.33
          : 0.0;
    } else {
      opacity = currentValue > 0.66 ? (currentValue - 0.66) / 0.33 : 0.0;
    }

    // Ограничиваем значение от 0.0 до 1.0
    return opacity.clamp(0.0, 1.0);
  }
}
