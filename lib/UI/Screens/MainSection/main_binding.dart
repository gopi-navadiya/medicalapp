import 'package:get/get.dart';

import 'CartSection/cart_controller.dart';
import 'HomeSection/home_controller.dart';
import 'ProfileSection/profile_controller.dart';
import 'main_controller.dart';


class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CartController(),fenix: true);
    Get.lazyPut(() => ProfileController());
  }
}
