import 'dart:io';

import 'package:egypet_trip/src/core/utils/log.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tesseract_ocr/flutter_tesseract_ocr.dart';
import 'package:image_picker/image_picker.dart';
import 'package:translator/translator.dart';

class PhotoProcessor {
  final ValueNotifier<String> notifierText = ValueNotifier<String>('');
  final ValueNotifier<XFile?> notifierPickedFile = ValueNotifier<XFile?>(null);

  /// Этот флаг будет `true`, пока идёт OCR и перевод
  final ValueNotifier<bool> isProcessing = ValueNotifier<bool>(false);

  final _translator = GoogleTranslator();
  final ImagePicker _picker = ImagePicker();
  XFile? _pickedFile;
  String translatedText = '';

  Future<void> _processImage(String imagePath) async {
    try {
      // Здесь идёт распознавание текста
      String recognizedText =
          await FlutterTesseractOcr.extractText(imagePath, language: 'ara');

      // Фильтруем: оставляем только арабские символы
      final filteredText =
          recognizedText.replaceAll(RegExp(r'[^\u0600-\u06FF]+'), '');

      // Если в фильтрованном тексте есть что переводить
      if (filteredText.isNotEmpty) {
        final translation = await _translator.translate(
          filteredText,
          from: 'ar', // перевод с арабского
        );
        translatedText = translation.text;
        notifierText.value = translatedText;
      } else {
        notifierText.value = 'Masr text not found.';
      }
    } catch (e) {
      logger.e('Error processing image: $e');
      notifierText.value = 'Error processing image: $e';
    }
  }

  Future<void> pickImage(ImageSource source) async {
    try {
      // Начинаем «процесс»
      isProcessing.value = true;

      _pickedFile = await _picker.pickImage(source: source, imageQuality: 25);
      if (_pickedFile != null) {
        await _processImage(_pickedFile!.path);
        notifierPickedFile.value = _pickedFile;
      }
    } catch (e) {
      logger.e('Error picking image: $e');
      notifierText.value = 'Error picking image: $e';
    } finally {
      // В любом случае (успех или ошибка) завершаем «процесс»
      isProcessing.value = false;
    }
  }
}
