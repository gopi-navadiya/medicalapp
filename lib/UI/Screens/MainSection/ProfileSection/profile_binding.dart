import 'package:get/get.dart';
import 'package:medicalapp/UI/Screens/MainSection/ProfileSection/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
