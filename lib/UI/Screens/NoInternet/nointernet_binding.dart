import 'package:get/get.dart';
import 'package:medicalapp/UI/Screens/NoInternet/nointernet_controller.dart';

class NoInternetBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(NoInternetController());
  }

}