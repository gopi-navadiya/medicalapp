import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/app_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/app_routes.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/controller_id.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_appbar.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_button.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_inkwell.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_field.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_style.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/LoginSection/login_controller.dart';

class ForgotPasswordOne extends StatelessWidget {
  const ForgotPasswordOne({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        id: ControllerId.forgotPasswordKey,
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: const CommonAppBar(),
            backgroundColor: ThemeColors.background(context),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 25),

              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    HeadlineBodyOneBaseWidget(
                      title: AppConstant.passwordRecovery.tr,
                      style:
                          TextStyleConstant.commonStyle(context: context),
                    ),
                    HeadlineBodyOneBaseWidget(
                      title: AppConstant.enterEmailRecover.tr,
                      style: TextStyleConstant.commonStyle(
                          context: context,
                          color: ThemeColors.secondary(context),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    const SizedBox(height: 28),
                    commonTextField(
                        context: context,
                        controller:
                            controller.txtForgotEmailController.value,
                        hint: AppConstant.emailAddress.tr,
                        prefixIcon: SvgPicture.asset(
                          ImageConstant.email,
                        )),
                    const SizedBox(height: 18),
                    CommonInkWell(
                      onTap: () {

                      },
                      child: HeadlineBodyOneBaseWidget(
                        title: AppConstant.useAnotherMethod.tr,
                        style: TextStyleConstant.commonStyle(
                          context: context,
                          color: ColorConstants.commonYellow,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),
                    CommonButton(
                      buttonColor: ColorConstants.commonYellow,
                      titleColor: ColorConstants.blackBg,
                      title: AppConstant.next.tr,
                      onTap: () {
                         Get.toNamed(RouteConstant.setNewPasswordScreen);
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
