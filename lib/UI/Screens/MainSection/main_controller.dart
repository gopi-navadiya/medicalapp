import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/controller_id.dart';
import 'package:medicalapp/Infrastructure/Models/scanned_data_model.dart';

class MainController extends GetxController {
  RxInt currentPage = 0.obs;
  final PageController pageController = PageController();
  RxString barcode = ''.obs;
    List<ScannedItem> scannedItems=[];
  animateToPage(int page, {withAnimation = false}) {
    currentPage.value = page;
    update([ControllerId.mainKey]);
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: withAnimation ? 250 : 1),
      curve: Curves.easeIn,
    );
  }
}

class CommonWrapper extends StatefulWidget {
  const CommonWrapper({super.key, required this.child});

  final Widget child;

  @override
  State<CommonWrapper> createState() => _CommonWrapperState();
}

class _CommonWrapperState extends State<CommonWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
