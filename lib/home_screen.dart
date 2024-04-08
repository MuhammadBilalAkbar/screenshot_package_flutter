import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: controller,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Colors.blue,
          title: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
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
      ),
    );
  }

  final time = DateTime.now()
      // .microsecondsSinceEpoch.toString()
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

  Widget buildImage() => SizedBox(
        width: double.infinity,
        height: 600,
        child: Image.asset('img.png', fit: BoxFit.cover),
      );
}
