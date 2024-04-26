import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/app_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/app_routes.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/controller_id.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';
import 'package:medicalapp/Infrastructure/Services/preference_service.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_button.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_inkwell.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_field.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_style.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        id: ControllerId.loginKey,
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ThemeColors.background(context),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 50),
                HeadlineBodyOneBaseWidget(
                    title: AppConstant.welcomeBack.tr,
                    style: TextStyleConstant.commonStyle(
                        context: context)).marginSymmetric(horizontal: 20),

             Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 commonTextField(
                     context: context,
                     controller: controller.txtEmailController.value,
                     hint: AppConstant.emailAddress.tr,
                     prefixIcon: SvgPicture.asset(
                       ImageConstant.email,
                     )),
                 const SizedBox(height: 12),
                 commonTextField(
                     context: context,
                     controller: controller.txtPasswordController.value,
                     hint: AppConstant.password.tr,
                     suffixIcon:
                     SvgPicture.asset(ImageConstant.hidePassword),
                     prefixIcon: SvgPicture.asset(
                       ImageConstant.password,
                     )),
                 const SizedBox(height: 14),
                 Align(
                   alignment: AlignmentDirectional.topEnd,
                   child: CommonInkWell(
                     onTap: () {
                       Get.toNamed(RouteConstant.forgotPasswordScreen);
                     },
                     child: HeadlineBodyOneBaseWidget(
                       title: AppConstant.forgotPassword.tr,
                       style: TextStyleConstant.commonStyle(
                         context: context,
                         color: ColorConstants.commonYellow,
                         fontSize: 14,
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 30),
                 CommonButton(
                   title: AppConstant.signUp.tr,
                   onTap: () {
                     Get.toNamed(RouteConstant.createAccountScreen);
                   },
                 ),
                 const SizedBox(height: 11),
                 CommonButton(
                   buttonColor: ColorConstants.commonYellow,
                   titleColor: ColorConstants.blackBg,
                   title: AppConstant.sigIn.tr,
                   onTap: () async{
                     await SharedPreferenceService.saveLoggedIn(true);
                     Get.toNamed(RouteConstant.mainScreen);
                   },
                 ),

               ],
             ).marginSymmetric(vertical: 30, horizontal: 20),
                const SizedBox(height: 27),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: ThemeColors.onSecondary(context),
                        height: 1,
                        width: double.infinity,
                      ),
                    ),
                    HeadlineBodyOneBaseWidget(
                      title: AppConstant.orSignInWith.tr,
                      style: TextStyleConstant.commonStyle(
                          context: context,
                          fontWeight: FontWeight.w400,
                          color: ThemeColors.primary(context),
                          fontSize: 12),
                    ).marginSymmetric(horizontal: 19),
                    Expanded(
                      child: Container(
                        color: ThemeColors.onSecondary(context),
                        height: 1,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 27),
                CommonButton(
                  icon: ImageConstant.google,
                  iconColor: ThemeColors.primary(context),
                  title: AppConstant.signInWithGoogle.tr,
                  onTap: () {},
                ).marginSymmetric(horizontal: 20),
              ],
            ),
          );
        });
  }
}
