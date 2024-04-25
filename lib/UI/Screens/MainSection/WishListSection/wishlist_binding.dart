import 'package:get/get.dart';
import 'package:medicalapp/UI/Screens/MainSection/WishListSection/wishlist_controller.dart';

class WishListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishListController());
  }
}
