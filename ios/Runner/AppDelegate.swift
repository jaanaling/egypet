import UIKit
import Flutter
import Vision

@main
@objc class AppDelegate: FlutterAppDelegate {

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
        let channel = FlutterMethodChannel(name: "apple_vision_ocr",
                                           binaryMessenger: controller.binaryMessenger)

        channel.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in

            // Определяем какой метод вызвали со стороны Dart
            switch call.method {
            case "recognizeTextFromImage":
                guard let args = call.arguments as? [String: Any],
                      let imagePath = args["path"] as? String else {
                    result(FlutterError(code: "BAD_ARGS",
                                        message: "No image path provided",
                                        details: nil))
                    return
                }
                self.handleRecognizeText(imagePath: imagePath, flutterResult: result)

            default:
                result(FlutterMethodNotImplemented)
            }
        })

        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    private func handleRecognizeText(imagePath: String, flutterResult: @escaping FlutterResult) {
        // Создаём URL из пути
        let fileUrl = URL(fileURLWithPath: imagePath)

        // Загружаем UIImage
        guard let uiImage = UIImage(contentsOfFile: fileUrl.path) else {
            flutterResult("")
            return
        }

        // Преобразуем в CGImage
        guard let cgImage = uiImage.cgImage else {
            flutterResult("")
            return
        }

        // Создаём запрос на распознавание текста
        // Укажем .fast или .accurate, а также языки (в том числе арабский).
        let request = VNRecognizeTextRequest { (request, error) in
            if let error = error {
                flutterResult(FlutterError(code: "VISION_ERROR",
                                           message: error.localizedDescription,
                                           details: nil))
                return
            }

            var recognizedString = ""

            // Обход результатов
            if let observations = request.results as? [VNRecognizedTextObservation] {
                for obs in observations {
                    // Обычно берем topCandidate
                    if let topCandidate = obs.topCandidates(1).first {
                        recognizedString += topCandidate.string
                        recognizedString += "\n"
                    }
                }
            }

            // Возвращаем распознанный текст обратно в Dart
            flutterResult(recognizedString)
        }

        // Указываем языки (по документации Apple)
        // Например, "ar" для арабского, "en" для английского, и т.д.
        // Можно указать список, если хотим multi-language: ["ar", "en"]
        request.recognitionLanguages = ["ar"]

        // .accurate или .fast
        request.recognitionLevel = .accurate

        // Запускаем обработку
        let requestHandler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        do {
            try requestHandler.perform([request])
        } catch {
            flutterResult(FlutterError(code: "VISION_ERROR",
                                       message: error.localizedDescription,
                                       details: nil))
        }
    }
}
