import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';

import 'home_controller.dart';
class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Lottie.asset("assets/lottiefiles/bounching_ball.json"),
                  // Lottie.asset("assets/lottiefiles/camera.json"),
                  // Lottie.asset("assets/lottiefiles/clock.json"),
                  // Lottie.asset("assets/lottiefiles/cloud_disconnection.json"),
                  // Lottie.asset("assets/lottiefiles/countdown.json"),
                  // Lottie.asset("assets/lottiefiles/delivery_van.json"),
                  // Lottie.asset("assets/lottiefiles/done.json"),
                  // Lottie.asset("assets/lottiefiles/emoji_shock.json"),
                  // Lottie.asset("assets/lottiefiles/emoji_tongue.json"),
                  // Lottie.asset("assets/lottiefiles/emoji_wink.json"),
                  // Lottie.asset("assets/lottiefiles/fabulous_onboarding_animation.json"),
                  // Lottie.asset("assets/lottiefiles/favourite_app_icon.json"),
                  // Lottie.asset("assets/lottiefiles/finish,done.json"),
                  // Lottie.asset("assets/lottiefiles/glow_loading.json"),
                  // Lottie.asset("assets/lottiefiles/gradient_animated_background.json"),
                  // Lottie.asset("assets/lottiefiles/happy birthday.json"),
                  ///for scanning
                  // Lottie.asset("assets/lottiefiles/hint_01.json"),
                  // Lottie.asset("assets/lottiefiles/scan.json"),
                  // Lottie.asset("assets/lottiefiles/scan_qr_code_success.json"),
                  ///app logo
                  // Lottie.asset("assets/lottiefiles/intelia_logo_animation.json"),
                  // Lottie.asset("assets/lottiefiles/location.json"),
                  // Lottie.asset("assets/lottiefiles/location_pin.json"),
                  // Lottie.asset("assets/lottiefiles/mailsent.json"),
                  ///loader
                  // Lottie.asset("assets/lottiefiles/material loading.json"),
                  // Lottie.asset("assets/lottiefiles/material_loader.json"),
                  // Lottie.asset("assets/lottiefiles/material_loading_2.json"),
                  // Lottie.asset("assets/lottiefiles/material_wave_loading.json"),
                  // Lottie.asset("assets/lottiefiles/phonological.json"),
                 // Lottie.asset("assets/lottiefiles/preloader.json"),
                  //line progress bar
                  // Lottie.asset("assets/lottiefiles/progress_bar 2.json"),
                  // Lottie.asset("assets/lottiefiles/trail_loading.json"),


                  ///onboarding
                  // Lottie.asset("assets/lottiefiles/patient_successfully_added.json"),
                  // Lottie.asset("assets/lottiefiles/me_at_office.json"),
                  ///internet
                  // Lottie.asset("assets/lottiefiles/no_internet_connection.json"),
                  ///enable location permission
                  // Lottie.asset("assets/lottiefiles/permission.json"),
                  ///person with flirting
                  //  Lottie.asset("assets/lottiefiles/personal_character.json"),


                   InkWell(
                      onTap: () async {
                        var result = await BarcodeScanner.scan();
                        print("result type : ${result.type}"); // The result type (barcode, cancelled, failed)
                        print("result rawContent : ${result.rawContent}"); // The barcode content
                        print("result format : ${result.format}"); // The barcode format (as enum)
                        print("result formatNote : ${result.formatNote}");
                        controller. barcode.value = result.rawContent;
                        controller.update();

                      },
                      child: const HeadlineBodyOneBaseWidget(
                        title: "Tap to open camera",
                      )),
                ],
              ),
            ),
          );
        });
  }
}
