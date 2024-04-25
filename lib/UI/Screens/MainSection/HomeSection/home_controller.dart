import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class HomeController extends GetxController {
  RxBool progress = true.obs;
  RxString barcode = ''.obs;

  void processImage(InputImage image) async {
    //  await getStudentsData();

    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

    final RecognizedText recognizedText = await textRecognizer.processImage(image);

    String data = recognizedText.text;

    print("datta1::: ${recognizedText.blocks}");
    print("datta2::: ${recognizedText.text}");
    print("datta3::: ${recognizedText.toString()}");
    // matchedStudent = RxList(studentData
    //     .where(
    //         (p0) => data.trim().toLowerCase().contains(p0.studentId.toString()))
    //     .toList());
    progress.value = false;
    // matchedStudent.isEmpty
    //     ? Get.snackbar(AppConstants.error.tr, AppConstants.studentIdDoesNotExist.tr,
    //         colorText: ColorConstants.black,
    //         snackPosition: SnackPosition.BOTTOM,
    //         backgroundColor: ColorConstants.white.withOpacity(.6))
    //     : null;
    update();
  }
}
