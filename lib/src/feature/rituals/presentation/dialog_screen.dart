import 'package:egypet_trip/src/core/utils/app_icon.dart';
import 'package:egypet_trip/src/core/utils/icon_provider.dart';
import 'package:egypet_trip/src/feature/rituals/utils/dialog_processor.dart';
import 'package:egypet_trip/ui_kit/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:translator/translator.dart';

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
    // dialogProcessor.speechInit();
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
                    flex: 3,
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
                      horizontal: 4,
                      vertical: 8,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 44),
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
                          Row(crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
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
                                         Gap(8),            
                              AnimatedButton(
                                onPressed: () => setState(() {
                                  dialogProcessor.messages.clear();
                                }),
                                child: AppIcon(
                                  width: 36,
                                  asset: IconProvider.clear.buildImageUrl(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
  bool isActive = false;

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
    setState(() {
      isActive = true;
    });
  }

  void _onPanEnd(DragEndDetails details) {
    _controller.reverse();
    widget.onStopListen();
    setState(() {
      isActive = false;
    });
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
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive
                      ? Colors.black.withOpacity(0.7)
                      : Colors.transparent,
                  border: isActive
                      ? Border.all(color: const Color(0xFF2EB200))
                      : null),
              child: AppIcon(
                blendMode: BlendMode.srcATop,
                color: isActive ? Colors.black.withOpacity(0.7) : null,
                asset: widget.isEnglish
                    ? IconProvider.d1.buildImageUrl()
                    : IconProvider.d2.buildImageUrl(),
              ),
            ),
            const Gap(7),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                  color: const Color(0xFFBA5B04),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 24),
                child: Text(
                  !widget.isEnglish ? 'Masr' : 'English',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatefulWidget {
  final bool isEnglish;
  final void Function() onListen;
  final String text;
  ChatBubble({
    super.key,
    required this.isEnglish,
    required this.onListen,
    required this.text,
  });

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  final _translator = GoogleTranslator();

  String translatedText = '';

  Future<void> translateText(String text, String from, String to) async {
    final translation = await _translator.translate(
      text,
      from: from,
      to: to,
    );
    setState(() {
      translatedText = translation.text;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    translateText(widget.text, widget.isEnglish ? 'en' : 'ar',
        widget.isEnglish ? 'ar' : 'en');
  }

  @override
  Widget build(BuildContext context) {
    const bubbleBorderRadius = Radius.circular(14);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!widget.isEnglish)
          AppIcon(
            asset: IconProvider.d1.buildImageUrl(),
            width: width * 0.2,
          ),
        if (widget.isEnglish)
          AnimatedButton(
            onPressed: () => widget.onListen(),
            child: Icon(
              Icons.volume_up,
            ),
          ),
        Gap(4),
        Container(
          constraints: BoxConstraints(
            maxWidth: width * 0.35,
          ),
          decoration: BoxDecoration(
            color:
                widget.isEnglish ? const Color(0xFFBA5B04) : Color(0xFFF69100),
            borderRadius: BorderRadius.only(
              topLeft: bubbleBorderRadius,
              topRight: bubbleBorderRadius,
              bottomLeft: !widget.isEnglish
                  ? const Radius.circular(3)
                  : bubbleBorderRadius,
              bottomRight: !widget.isEnglish
                  ? bubbleBorderRadius
                  : const Radius.circular(3),
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
              textAlign: TextAlign.right,
              "${widget.text}\n$translatedText",
            ),
          ),
        ),
        Gap(4),
        if (widget.isEnglish)
          AppIcon(
            asset: IconProvider.d2.buildImageUrl(),
            width: width * 0.2,
          ),
        if (!widget.isEnglish)
          AnimatedButton(
            onPressed: () => widget.onListen(),
            child: Icon(
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
        color: Colors.white,
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
