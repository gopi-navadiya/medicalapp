import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/app_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/font_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';
import 'package:medicalapp/UI/Commons/Widgets/fade_in_file_image_widget.dart';

class SecondOnBoarding extends StatefulWidget {
  final String fileUrl;

  const SecondOnBoarding({super.key, required this.fileUrl});

  @override
  State<SecondOnBoarding> createState() => _SecondOnBoardingState();
}

class _SecondOnBoardingState extends State<SecondOnBoarding>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DelayedDisplay(
            slideIn: false,
            fadingDuration: const Duration(milliseconds: 750),
            delay: const Duration(milliseconds: 50),
            slidingBeginOffset: const Offset(0, 1),
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    widget.fileUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 13,
                    left: 25,
                    child: SafeArea(
                        child: Image.asset(
                      ImageConstant.coloredLogoPng,
                      width: 36,
                      height: 36,
                    )))
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: DelayedDisplay(
                  slideIn: true,
                  slideDuration: const Duration(milliseconds: 750),
                  delay: const Duration(milliseconds: 50),
                  slidingBeginOffset: const Offset(0, .2),
                  child: Image.asset(
                    ImageConstant.onboardingTwoBG,
                    fit: BoxFit.contain,
                  ).paddingOnly(top: 4),
                ),
              ),
              HeadlineBodyOneBaseWidget(
                title: AppConstant.eCom.tr,
                fontSize: 14,
                fontFamily: FontConstant.blinkerRegular,
                titleColor: const Color(0xffBDBDBD),
              ),
              const SizedBox(
                height: 8,
              ),
              HeadlineBodyOneBaseWidget(
                title: AppConstant.onBoardingSecondTitle.tr,
                fontSize: 50,
                fontFamily: FontConstant.blinkerRegular,
                titleColor: ThemeColors.primary(context),
              ),
              const SizedBox(
                height: 26,
              ),
            ],
          ).paddingSymmetric(horizontal: 24, vertical: 48),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => false;
}
