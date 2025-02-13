import 'dart:io';
import 'package:egypet_trip/routes/route_value.dart';
import 'package:egypet_trip/src/core/utils/app_icon.dart';
import 'package:egypet_trip/src/core/utils/icon_provider.dart';
import 'package:egypet_trip/src/core/utils/size_utils.dart';
import 'package:egypet_trip/src/feature/rituals/utils/photo_processor.dart';
import 'package:egypet_trip/ui_kit/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/dialog_processor.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  final PhotoProcessor photoProcessor = PhotoProcessor();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      bottom: false,
      child: ValueListenableBuilder<bool>(
        valueListenable: photoProcessor.isProcessing,
        builder: (context, isProcessing, _) {
          return Stack(
            children: [
             
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: ValueListenableBuilder<XFile?>(
                          valueListenable: photoProcessor.notifierPickedFile,
                          builder: (context, value, child) {
                            return (value != null)
                                ? SizedBox(
                                    width: double.infinity,
                                    height: height * 0.52,
                                    child: Column(
                                      children: [
                                        SingleChildScrollView(
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              SizedBox(
                                                width: double.infinity,
                                                height: height * 0.4,
                                              ),
                                              Image(
                                                width: double.infinity,
                                                height: height * 0.4,
                                                image: FileImage(
                                                  File(value.path),
                                                ),
                                                fit: BoxFit.contain,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            PhotoButton(
                                              isActive: false,
                                              source: ImageSource.gallery,
                                              onPressed:
                                                  photoProcessor.pickImage,
                                            ),
                                            const SizedBox(width: 16),
                                            PhotoButton(
                                              isActive: false,
                                              source: ImageSource.camera,
                                              onPressed:
                                                  photoProcessor.pickImage,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Container(
                                      width: double.infinity,
                                      height: height * 0.52,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(9),
                                        border: Border.all(
                                          color: const Color(0xFFBA5B04),
                                          width: 4,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          PhotoButton(
                                            isActive: true,
                                            source: ImageSource.gallery,
                                            onPressed: photoProcessor.pickImage,
                                          ),
                                          const SizedBox(width: 16),
                                          PhotoButton(
                                            isActive: true,
                                            source: ImageSource.camera,
                                            onPressed: photoProcessor.pickImage,
                                          ),
                                          const SizedBox(width: 16),
                                        ],
                                      ),
                                    ),
                                  );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: getWidth(context, percent: 0.7),
                  height: getHeight(context, percent: 0.6),
                  child: ValueListenableBuilder<String>(
                    valueListenable: photoProcessor.notifierText,
                    builder: (context, value, child) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 20,
                            child: Container(
                              height: getHeight(context, percent: 0.2),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    IconProvider.bubble.buildImageUrl(),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(24.0, 0, 24, 24),
                                child: Center(
                                  child: SizedBox(
                                    width: getWidth(context, percent: 0.5),
                                    height: getHeight(context, percent: 0.1),
                                    child: SingleChildScrollView(
                                      child: Text(
                                        value.isNotEmpty
                                            ? value
                                            : "Add a picture and I'll translate it.",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -getWidth(context, percent: 0.1),
                            bottom: -getHeight(context, percent: 0.1),
                            child: AppIcon(
                              asset: IconProvider.cleo.buildImageUrl(),
                              height: getHeight(context, percent: 0.7),
                              width: getWidth(context, percent: 0.4),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              if (isProcessing) ...[
                ModalBarrier(color: Colors.black45),
                const Center(child: CircularProgressIndicator()),
              ],
               Positioned(
                left: 20,
                top: 10,
                child: AnimatedButton(
                  onPressed: () => context.push(
                      "${RouteValue.photo.path}/${RouteValue.privacy.path}"),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(IconProvider.favour.buildImageUrl()),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        CupertinoIcons.lock_shield_fill,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class PhotoButton extends StatelessWidget {
  final bool isActive;
  final void Function(ImageSource source) onPressed;
  final ImageSource source;
  const PhotoButton({
    super.key,
    required this.isActive,
    required this.onPressed,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onPressed: () => onPressed(source),
      child: AppIcon(
        asset: source == ImageSource.camera
            ? IconProvider.photo.buildImageUrl()
            : IconProvider.gallery.buildImageUrl(),
        width: isActive ? 96 : 40,
      ),
    );
  }
}

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
