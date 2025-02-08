import 'dart:io';
import 'package:egypet_trip/src/feature/rituals/utils/photo_processor.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({
    super.key,
  });

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  final PhotoProcessor photoProcessor = PhotoProcessor();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          16,
          16,
          16,
          120,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: ValueListenableBuilder<XFile?>(
                      valueListenable: photoProcessor.notifierPickedFile,
                      builder: (context, value, child) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: (value != null)
                              ? SizedBox(
                                  width: double.infinity,
                                  height: height * 0.52,
                                  child: SingleChildScrollView(
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: height * 0.52,
                                        ),
                                        Image(
                                          width: double.infinity,
                                          height: height * 0.52,
                                          image: FileImage(
                                            File(value.path),
                                          ),
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(
                                  width: double.infinity,
                                  height: height * 0.52,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.photo,
                                            size: 100,
                                          ),
                                          Gap(8),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    left: 0,
                    right: 0,
                    child: PhotoButton(
                      photoButtonType: PhotoButtonType.gallery,
                      isActive: true,
                      onPressed: photoProcessor.pickImage,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(11),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(21),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "StringConstants.textTranslation",
                          ),
                          const Gap(16),
                          ValueListenableBuilder<String>(
                            valueListenable: photoProcessor.notifierText,
                            builder: (context, value, child) {
                              return Text(
                                value,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PhotoButton extends StatelessWidget {
  final PhotoButtonType photoButtonType;
  final bool isActive;
  final void Function() onPressed;
  const PhotoButton({
    super.key,
    required this.photoButtonType,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: EdgeInsets.all(isActive ? 15 : 11),
      ),
      child: Icon(
        photoButtonType == PhotoButtonType.photo
            ? Icons.photo_camera
            : photoButtonType == PhotoButtonType.realTime
                ? Icons.remove_red_eye
                : Icons.add_photo_alternate,
        size: isActive ? 46 : 48,
      ),
    );
  }
}

enum PhotoButtonType { realTime, photo, gallery }
