import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import 'package:egypet_trip/src/core/utils/log.dart';
import 'package:translator/translator.dart';

class DialogProcessor {
  final ValueNotifier<bool> notifierDialog = ValueNotifier<bool>(false);
  final stt.SpeechToText _speech = stt.SpeechToText();
  final FlutterTts _flutterTts = FlutterTts();
  final _translator = GoogleTranslator();
  final List<Map<String, String>> messages = [];

  final _listenForDuration = const Duration(seconds: 30);
  final _pauseForDuration = const Duration(seconds: 10);

  bool _isSpeechInit = false;
  Translation? _translate;
  String _text = '';
  String _language = 'en-US'; // Let's say we store 'en-US' by default

  Future<void> speechInit() async {
    try {
      // Check TTS language
      await _flutterTts.setLanguage('en-US');
      
      // Initialize speech
      _isSpeechInit = await _speech.initialize(
        onStatus: (status) => logger.i('Status: $status'),
        onError: (errorNotification) {
          notifierDialog.value = false;
          logger.e('Error: ${errorNotification.errorMsg}');
        },
        debugLogging: true,
      );

      // Optional: check what locales are actually available
      var availableLocales = await _speech.locales();
      logger.i('Available locales for speech: ${availableLocales.map((e) => e.localeId).join(', ')}');

    } catch (e) {
      notifierDialog.value = false;
      logger.e(e.toString());
    }
  }

  Future<void> startListening(String language) async {
    _language = language; // 'en-US' or 'ar-SA', for instance
    try {
      if (_isSpeechInit) {
        notifierDialog.value = true;
        _speech.listen(
          onResult: (result) {
            _text = result.recognizedWords;
          },
          localeId: _language,
          listenFor: _listenForDuration,
          pauseFor: _pauseForDuration,
        );
      }
    } on Exception catch (e) {
      notifierDialog.value = false;
      logger.e(e.toString());
    }
  }

  Future<void> stopListening() async {
    try {
      if (notifierDialog.value) {
        await Future.delayed(const Duration(seconds: 1));
        _speech.stop();

        if (_text.isNotEmpty) {
          // Convert the TTS/speech language code to short code for translator
          String translatorFrom = (_language.startsWith('ar')) ? 'ar' : 'en';
          String translatorTo   = (_language.startsWith('ar')) ? 'en' : 'ar';

          _translate = await _translator.translate(
            _text,
            from: translatorFrom,
            to: translatorTo,
          );

          // If we used 'ar-SA' in TTS/speech, keep it, or toggle
          _language = _language.startsWith('ar') ? 'en-US' : 'ar-EG';

          messages.add({
            'language': _language,
            'message': _translate!.text,
          });

          _text = '';
          _translate = null;
        }
        notifierDialog.value = false;
      }
    } on Exception catch (e) {
      notifierDialog.value = false;
      logger.e(e.toString());
    }
  }

  Future<void> speakText(String text, String language) async {
    try {
      // Make sure TTS language is set correctly
      await _flutterTts.setLanguage(language); // e.g. 'en-US' or 'ar-SA'
      await _flutterTts.speak(text);
    } on Exception catch (e) {
      logger.e(e.toString());
    }
  }
}


class AppleVisionOcr {
  static const MethodChannel _channel = MethodChannel('apple_vision_ocr');

  /// Распознаём текст из файла (фото).
  /// [imagePath] – путь к локальному файлу (например, сделанный снимок или выбранный из галереи).
  static Future<String> recognizeText(String imagePath) async {
    if (!Platform.isIOS) {
      throw UnsupportedError('Apple Vision OCR доступен только на iOS');
    }

    final recognizedText = await _channel.invokeMethod<String>(
      'recognizeTextFromImage',
      {
        'path': imagePath,
      },
    );

    return recognizedText ?? '';
  }
}