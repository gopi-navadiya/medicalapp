import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';

class OnBoardingController extends GetxController {
  RxString onBoardingFirstImage = ImageConstant.onboardingOne.obs;
  RxString onBoardingSecondImage = ImageConstant.onboardingTwo.obs;
  RxString onBoardingThirdImage = ImageConstant.onboardingThree.obs;
  RxString onBoardingFourthImage = ImageConstant.onboardingFour.obs;

  RxInt initialIndex = 0.obs;
  Rx<PageController> introController = PageController().obs;

  onPageChanged(int value) {
    initialIndex.value = value;
    update();
  }
}
