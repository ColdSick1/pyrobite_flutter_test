import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/presentation/design/theme_data.dart';
import 'package:test_app/presentation/screen/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MainScreen(),
      theme: customThemeData,
    );
  }
}
