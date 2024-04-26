import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/app_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/font_constant.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';
import 'package:medicalapp/UI/Commons/Widgets/fade_in_file_image_widget.dart';

class FirstOnBoarding extends StatefulWidget {
  final String fileUrl;

  const FirstOnBoarding({
    super.key,
    required this.fileUrl,
  });

  @override
  State<FirstOnBoarding> createState() => _FirstOnBoardingState();
}

class _FirstOnBoardingState extends State<FirstOnBoarding>
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
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DelayedDisplay(
              slideIn: false,
              fadingDuration: const Duration(milliseconds: 750),
              delay: const Duration(milliseconds: 50),
              slidingBeginOffset: const Offset(0, 1),
              child:   Container(
                height: MediaQuery.sizeOf(context).height * .7,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.fileUrl),
                      fit: BoxFit.cover,
                    )),
              ),/*Stack(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * .7,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(widget.fileUrl),
                      fit: BoxFit.cover,
                    )),
                  ),
                  // Positioned(
                  //     top: 13,
                  //     left: 25,
                  //     child: SafeArea(
                  //         child: SvgPicture.asset(ImageConstant.whiteLogo,
                  //             width: 36, height: 36)))
                ],
              ),*/
            ),
            DelayedDisplay(
              slideIn: true,
              fadeIn: false,
              slideDuration: const Duration(milliseconds: 500),
              slidingBeginOffset: const Offset(0, .15),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: IntrinsicHeight(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * .5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ThemeColors.background(context),
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                        /*image: DecorationImage(
                            image: AssetImage(ImageConstant.onboardingOneBG),
                            fit: BoxFit.cover)*/),
                    padding: const EdgeInsets.all(24),
                    child: text(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget text() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          title: AppConstant.onBoardingFirstTitle.tr,
          fontSize: 50,
          fontFamily: FontConstant.blinkerRegular,
          titleColor: ThemeColors.primary(context),
        ),
        const SizedBox(
          height: 16,
        ),
        HeadlineBodyOneBaseWidget(
          title:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
          fontSize: 14,
          fontFamily: FontConstant.blinkerRegular,
          titleColor: ThemeColors.primary(context).withOpacity(.6),
        ),
        const Expanded(
            child: SizedBox(
          height: 84,
        )),
      ],
    );
  }

  @override
  bool get wantKeepAlive => false;
}
