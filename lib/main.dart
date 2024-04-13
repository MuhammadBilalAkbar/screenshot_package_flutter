import 'package:flutter/material.dart';
import 'package:screenshot_package_flutter/theme.dart';

import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Screenshot Package',
        theme: theme,
        home: const HomeScreen(title: 'Screenshot Package'),
      );
}
