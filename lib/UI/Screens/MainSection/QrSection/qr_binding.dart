import 'package:get/get.dart';
import 'package:medicalapp/UI/Screens/MainSection/QrSection/qr_controller.dart';

class QrBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrController());
  }
}
