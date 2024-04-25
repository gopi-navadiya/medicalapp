import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/app_routes.dart';
import 'package:medicalapp/Infrastructure/Services/preference_service.dart';

class SplashController extends GetxController {
  moveToNext() async {
    bool isLoggedIn = await SharedPreferenceService.getLoggedIn;
    await Future.delayed(2.seconds);
    if(isLoggedIn){
      Get.offAllNamed(RouteConstant.mainScreen);
    }else{
      Get.offAllNamed(RouteConstant.onBoardingScreen);
    }
  }

  @override
  void onInit() {
    moveToNext();
    super.onInit();
  }
}
