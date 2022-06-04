import 'package:get/get.dart';

class SettingController extends GetxController {
  var isDark = false.obs;

  isThemeChange() => isDark.value = !isDark.value;
}
