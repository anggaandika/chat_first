import 'package:chat/provider/setting_controller.dart';
import 'package:chat/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static var settingControler = Get.put(SettingController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        title: 'Chat Ui',
        debugShowCheckedModeBanner: false,
        theme: settingControler.isDark.value != true
            ? ThemeData.light()
            : ThemeData.dark(),
        home: const HomeScreen(),
      ),
    );
  }
}
