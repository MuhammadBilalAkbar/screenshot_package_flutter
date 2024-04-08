## 1. Research: Screenshot Flutter Package

- Keywords:
    - screenshot flutter package github
    - screenshot flutter web
    - screenshot flutter github
    - flutter fullscreen screenshot
    - screenshot flutter package example
    - flutter screenshot command
    - flutter screenshot and share
    - screenshot callback flutter
    - share screenshot flutter
    - flutter screenshot web example
    - flutter screenshot command github
    - flutter screenshot and share not working
    - flutter web view screenshot

- Video Title: Flutter Screenshot Package - Take Screenshot and Share it

## 2. Research: Competitors

**Flutter Videos/Articles**

- 28k: https://www.youtube.com/watch?v=rABnaF-Xk3E
- 3k: https://www.youtube.com/watch?v=rwH0JUO4KbE
- 2.1k: https://www.youtube.com/watch?v=rgRW6-QKKmM
- 219: https://www.youtube.com/shorts/UHcUEorya5E
- 5.1: https://www.youtube.com/watch?v=Yaw6PCaEwd4
- 4.8: https://www.youtube.com/watch?v=l72afTX5WEE
- 974: https://www.youtube.com/watch?v=BzD1EE8DHAs
- 3k: https://www.youtube.com/shorts/o6a-BUfOH_M
- 708: https://www.youtube.com/watch?v=Gd8NKlqLsfc
- 8.6k: https://www.youtube.com/watch?v=uZQT8nWaj_o
- 1.3k: https://www.youtube.com/watch?v=1PJx54UTMrE
- 8.6k: https://www.youtube.com/watch?v=gD8ucYW3-iM
- 171: https://www.youtube.com/shorts/kjgjmeIwwKg
- 3.6k: https://www.youtube.com/watch?v=D20rf0NpgXI
- 4kk: https://www.youtube.com/watch?v=gD1X-GZMoBY
- 2.6k: https://www.youtube.com/watch?v=cx_KJWZvLC8
- 290: https://www.youtube.com/watch?v=tzuUUjnP-PA
- 2.7k: https://www.youtube.com/watch?v=202xEj11PYI
- 275: https://www.youtube.com/watch?v=tZ7wpt5zZAs

**Android/Swift/React Videos**

- 28k: https://www.youtube.com/watch?v=rABnaF-Xk3E
- 1.4k: https://www.youtube.com/watch?v=8X-ruE_Am0Q
- 546: https://www.youtube.com/watch?v=dSmKS5qfebc
- 498: https://www.youtube.com/watch?v=OmK4m4N4MbQ
- 1.4k: https://www.youtube.com/watch?v=8X-ruE_Am0Q
- 28k: https://www.youtube.com/watch?v=rABnaF-Xk3E
- 1.1k: https://www.youtube.com/watch?v=Y1qwSx5kXTc
- 13k: https://www.youtube.com/watch?v=yil6EE2Fivo
- 2.1k: https://www.youtube.com/watch?v=rgRW6-QKKmM
- 37: https://www.youtube.com/watch?v=TsRvpYlQUtU
- 2.9k: https://www.youtube.com/watch?v=HhUYCCLSUUM
- 948: https://www.youtube.com/watch?v=DcyLs24k5wU

**Great Features**

- Widget Capture: Capture the contents of a specific widget or a subtree of the widget tree.
- Custom Callbacks: Define custom callbacks to be executed before and after taking a screenshot.
- Save to File: Save the captured screenshot to a file, enabling sharing or storage.
- Capture with GlobalKey: Support for capturing the contents of a widget identified by a GlobalKey.
- Custom Image Format: Specify the format of the captured image, such as PNG or JPG.

**Problems from Videos**

- Question:Hello, is there any way to take screenshot of device (not our app). So it must include
  status bar or i'll try to work on other apps. Thanks for help!
- Answer: Follow this
  link: https://stackoverflow.com/questions/56853765/how-to-take-screen-shots-of-mobile-debug-device-running-flutter-application-in-a

- Question: I have run into a bit of an issue. Any Idea's {filePath: null, errorMessage:
  java.io.FileNotFoundException: open failed: ACCESS (Permission denied), isSuccess: false} is the
  result from image gallery saver. Work perfect on android 10 and above 9 and bellow just does not
  work even with permissions granted and using permission handler.
- Answer: Follow this
  link: https://stackoverflow.com/questions/37819550/java-io-filenotfoundexception-storage-emulated-0-new-file-txt-open-failed-ea,
- Question: Hello, Can you tell me why i got this error 'Future<Uint8List?>' can't be assigned to
  the parameter type 'Uint8List'.
- Answer: Follow this
  link: https://stackoverflow.com/questions/67279594/the-argument-type-futureuint8list-cant-be-assigned-to-the-parameter-type-l

- Question:Hey what else options for backend other then firebase can we use node js, mangodb is
  there any specific path?
- Answer: Follow this
  link: https://www.quora.com/Which-backend-should-I-use-for-Flutter-Firebase-or-MongoDB-I-am-using-Node-js-Framework-for-server-side

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/76277762/my-flutter-app-is-not-running-after-adding-screenshot-package
- https://stackoverflow.com/questions/76294103/error-undefined-name-view-and-no-named-parameter-with-the-name-view-when-bui
- https://stackoverflow.com/questions/57645037/unable-to-take-screenshot-in-flutter
- https://stackoverflow.com/questions/68346734/error-when-trying-to-take-screenshot-with-flutter-renderrepaintboundary
- https://stackoverflow.com/questions/76893854/fluttererror-duplicate-globalkey-detected-in-widget-tree
- https://stackoverflow.com/questions/62021821/unable-to-take-screenshot-in-v2-flutter-using-native-code-it-was-working-well-i
- https://stackoverflow.com/questions/62021821/unable-to-take-screenshot-in-v2-flutter-using-native-code-it-was-working-well-i
- https://stackoverflow.com/questions/76893854/fluttererror-duplicate-globalkey-detected-in-widget-tree-

## 3. Video Structure

*Main Points / Purpose Of Lesson*

1. Capture whole screen
2. Capture any specific widget
3. Save the screenshot with `image_gallery_saver`, and `permission_handler`.
4. Temporary save and share the screenshot with `share_plus`, and `path_provider`.

*The Structured Main Content*

1. Initialize controller:
    ```dart
    final controller = ScreenshotController();
    ```
2. Inside build method, wrap `Scaffold` with `Screenshot` widget:
    ```dart
      return Screenshot(
          controller: controller,
          child: Scaffold(
    ```
3. This is the UI with one image and two elevated button:
    ```dart
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildImage(),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () async {
                      await controller.capture().then(
                        (bytes) {
                          if (bytes != null) {
                            saveImage(bytes);
                            saveAndShare(bytes);
                          }
                        },
                      ).catchError(
                        (onError) {
                          debugPrint(onError);
                        },
                      );
                    },
                    child: const Text('Take Screenshot'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () async {
                      await controller.captureFromWidget(buildImage()).then(
                        (bytes) {
                          saveImage(bytes);
                          saveAndShare(bytes);
                        },
                      ).catchError(
                        (onError) {
                          debugPrint(onError);
                        },
                      );
                    },
                    child: const Text('Capture Widget'),
                  ),
                ],
              ),
            ),
   
     Widget buildImage() => SizedBox(
        width: double.infinity,
        height: 600,
        child: Image.asset('img.png', fit: BoxFit.cover),
      );
    ```
4. Here are save image and share image methods:
    ```dart
      final time = DateTime.now()
          .toIso8601String()
          .replaceAll('.', '-')
          .replaceAll(':', '-');
    
      Future<void> saveAndShare(Uint8List bytes) async {
        final directory = Platform.isAndroid
            ? await getExternalStorageDirectory() // Android
            : await getApplicationDocumentsDirectory(); // iOS
        final image = File('${directory!.path}/$time.png');
        image.writeAsBytes(bytes);
        await Share.shareXFiles([XFile(image.path)]);
      }
    
      Future<void> saveImage(Uint8List bytes) async {
        final name = 'screenshot_$time';
        await Permission.storage.request();
        final result = await ImageGallerySaver.saveImage(bytes, name: name);
        debugPrint('result: $result');
        // return result['filePath'];
      }
    ```
5. We can also use `captureAndSave`, `captureAsUiImage`, and `captureFromLongWidget` methods of our
screenshot controller.