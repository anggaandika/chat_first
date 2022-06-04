import 'package:get/get.dart';

class HomeProvider extends GetxController {
  var seeFavorit = false.obs;

  seeingFavorit() => seeFavorit.value = !seeFavorit.value;
}
