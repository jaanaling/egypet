import UIKit
import Flutter
import Vision

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterStreamHandler {

    var eventSink: FlutterEventSink?

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        let controller: FlutterViewController = window?.rootViewController as! FlutterViewController

        // Метод-канал для вызова OCR
        let methodChannel = FlutterMethodChannel(name: "apple_vision_ocr", binaryMessenger: controller.binaryMessenger)
        methodChannel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) in
            if call.method == "recognizeTextFromImage" {
                guard let args = call.arguments as? [String: Any],
                      let imagePath = args["path"] as? String else {
                    result(FlutterError(code: "BAD_ARGS", message: "Путь к изображению не задан", details: nil))
                    return
                }
                self.handleRecognizeText(imagePath: imagePath, flutterResult: result)
            } else {
                result(FlutterMethodNotImplemented)
            }
        }

        // Создаём и регистрируем канал событий
        let eventChannel = FlutterEventChannel(name: "apple_vision_ocr/events", binaryMessenger: controller.binaryMessenger)
        eventChannel.setStreamHandler(self)

        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    // MARK: - Реализация FlutterStreamHandler

    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        return nil
    }

    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        self.eventSink = nil
        return nil
    }

    // MARK: - Обработка распознавания текста

    private func handleRecognizeText(imagePath: String, flutterResult: @escaping FlutterResult) {
        // Пример отправки промежуточного сообщения
        eventSink?("Начинается загрузка изображения по пути: \(imagePath)")
do {
    // В зависимости от версии iOS и поддерживаемых ревизий используйте нужное значение.
    // Например, для iOS 14+ можно попробовать использовать VNRecognizeTextRequestRevision2
   let languages = try VNRecognizeTextRequest.supportedRecognitionLanguages(for: .accurate, revision: VNRecognizeTextRequest.currentRevision)
       eventSink?("Поддерживаемые языки: \(languages)")
} catch {
    eventSink?("Ошибка получения списка поддерживаемых языков: \(error)")
}
        let fileUrl = URL(fileURLWithPath: imagePath)
        guard let uiImage = UIImage(contentsOfFile: fileUrl.path) else {
            let errorMsg = "Не удалось загрузить изображение"
            eventSink?(errorMsg)
            flutterResult(FlutterError(code: "IMAGE_LOAD", message: errorMsg, details: nil))
            return
        }
        eventSink?("Изображение успешно загружено, размер: \(uiImage.size)")

        guard let cgImage = uiImage.cgImage else {
            let errorMsg = "Не удалось преобразовать изображение в CGImage"
            eventSink?(errorMsg)
            flutterResult(FlutterError(code: "CGIMAGE_CONVERSION", message: errorMsg, details: nil))
            return
        }

        eventSink?("Начало распознавания текста")

        let request = VNRecognizeTextRequest { request, error in
            if let error = error {
                let errorMsg = "Ошибка Vision: \(error.localizedDescription)"
                self.eventSink?(errorMsg)
                flutterResult(FlutterError(code: "VISION_ERROR", message: error.localizedDescription, details: nil))
                return
            }

            var recognizedString = ""
            let observations = request.results as? [VNRecognizedTextObservation] ?? []
            self.eventSink?("Найдено \(observations.count) блоков текста")

            for observation in observations {
                if let topCandidate = observation.topCandidates(1).first {
                    recognizedString += topCandidate.string + "\n"
                }
            }

            if recognizedString.isEmpty {
                self.eventSink?("OCR не обнаружил текст")
            } else {
                self.eventSink?("Распознавание текста завершено успешно")
            }

            flutterResult(recognizedString)
        }

        // Задаём только английский и арабский языки
        request.recognitionLanguages = ["ar-SA","ars-SA"]
        request.recognitionLevel = .accurate
        request.usesLanguageCorrection = true

        let handler = VNImageRequestHandler(
            cgImage: cgImage,
            orientation: CGImagePropertyOrientation(uiImage.imageOrientation),
            options: [:]
        )

        do {
            try handler.perform([request])
        } catch {
            let errorMsg = "Ошибка выполнения запроса Vision: \(error.localizedDescription)"
            eventSink?(errorMsg)
            flutterResult(FlutterError(code: "VISION_ERROR", message: errorMsg, details: nil))
        }
    }
}

// MARK: - Преобразование ориентации UIImage

extension CGImagePropertyOrientation {
    init(_ uiOrientation: UIImage.Orientation) {
        switch uiOrientation {
        case .up: self = .up
        case .down: self = .down
        case .left: self = .left
        case .right: self = .right
        case .upMirrored: self = .upMirrored
        case .downMirrored: self = .downMirrored
        case .leftMirrored: self = .leftMirrored
        case .rightMirrored: self = .rightMirrored
        @unknown default:
            self = .up
        }
    }
}
