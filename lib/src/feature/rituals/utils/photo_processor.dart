import 'package:egypet_trip/src/core/utils/log.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tesseract_ocr/flutter_tesseract_ocr.dart';
import 'package:image_picker/image_picker.dart';
import 'package:translator/translator.dart';



class PhotoProcessor {
  final ValueNotifier<String> notifierText = ValueNotifier<String>('');
  final ValueNotifier<XFile?> notifierPickedFile = ValueNotifier<XFile?>(null);

  final _translator = GoogleTranslator();
  final ImagePicker _picker = ImagePicker();
  XFile? _pickedFile;

  String translatedText = '';

  // Initialize Tesseract OCR

  Future<void> _processImage(String imagePath) async {
    try {
      // Perform OCR using Tesseract with Arabic language
      String recognizedText = await FlutterTesseractOcr.extractText(imagePath, language: 'ara');

      // If recognized text is not empty, translate it
      if (recognizedText.isNotEmpty) {
        final translation = await _translator.translate(
          recognizedText,
          from: 'ar', // Arabic language code
        );
        translatedText = translation.text;
        notifierText.value = translatedText;
      } else {
        notifierText.value = 'Text not recognized';
      }
    } catch (e) {
      logger.e('Error processing image: $e');
    }
  }

  Future<void> pickImage() async {
    try {
      _pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (_pickedFile != null) {
        await _processImage(_pickedFile!.path);
        notifierPickedFile.value = _pickedFile;
      }
    } catch (e) {
      logger.e('Error picking image: $e');
    }
  }
}
