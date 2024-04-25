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
import 'package:medicalapp/UI/Commons/Widgets/common_text_field.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_style.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';
import 'package:medicalapp/UI/Screens/DashboardSection/LoginSection/login_controller.dart';

class SetNewPasswordScreen extends StatelessWidget {
  const SetNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        id: ControllerId.setNewPasswordKey,
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: const CommonAppBar(),
            backgroundColor: ThemeColors.background(context),
            body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Image.asset(
                      ImageConstant.setNewPwdImg,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          HeadlineBodyOneBaseWidget(
                            title: AppConstant.setNewPassword.tr,
                            style:
                                TextStyleConstant.commonStyle(context: context),
                          ),
                          HeadlineBodyOneBaseWidget(
                            title: AppConstant.setNewPasswordDesc.tr,
                            style: TextStyleConstant.commonStyle(
                                context: context,
                                color: ThemeColors.secondary(context),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          const SizedBox(height: 29),
                          commonTextField(
                              context: context,
                              controller:
                                  controller.txtSetPasswordController.value,
                              hint: AppConstant.password.tr,
                              suffixIcon: SvgPicture.asset(
                                ImageConstant.hidePassword,
                              ),
                              prefixIcon: SvgPicture.asset(
                                ImageConstant.password,
                              )),
                          const SizedBox(height: 12),
                          commonTextField(
                              context: context,
                              suffixIcon: SvgPicture.asset(
                                ImageConstant.hidePassword,
                              ),
                              controller: controller
                                  .txtSetConfirmPasswordController.value,
                              hint: AppConstant.confirmPassword.tr,
                              prefixIcon: SvgPicture.asset(
                                ImageConstant.password,
                              )),
                          const SizedBox(height: 22),
                          CommonButton(
                            buttonColor: ColorConstants.commonYellow,
                            titleColor: ColorConstants.blackBg,
                            title: AppConstant.changePassword.tr,
                            onTap: () {
                              Get.offAllNamed(RouteConstant.loginScreen);
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
