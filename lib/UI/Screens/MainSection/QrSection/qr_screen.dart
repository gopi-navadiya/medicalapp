import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/controller_id.dart';
import 'package:medicalapp/UI/Screens/MainSection/QrSection/qr_controller.dart';

class QrScreen extends GetView<QrController> {
  const QrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QrController>(
        init: QrController(),
        id: ControllerId.qrKey,
        builder: (controller) {
          return Scaffold(
            backgroundColor: ThemeColors.background(context),
            body: Column(
              children: [
               Text("QR code screen")
              ],
            ),
          );
        });
  }

}
