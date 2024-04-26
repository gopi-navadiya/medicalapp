import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/app_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/controller_id.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';
import 'package:medicalapp/Infrastructure/Shared/PhoneNumber/intl_phone_field.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_button.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_inkwell.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_field.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_style.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';


import 'create_account_controller.dart';

class CreateAccountScreen extends GetView<CreateAccountController> {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAccountController>(
        init: CreateAccountController(),
        id: ControllerId.createAccountKey,
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ThemeColors.background(context),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                HeadlineBodyOneBaseWidget(
                    title: AppConstant.createAccount.tr,
                    style: TextStyleConstant.commonStyle(
                        context: context)).marginSymmetric(horizontal: 20),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    commonTextField(
                        context: context,
                        controller: controller.txtEmailController.value,
                        hint: AppConstant.emailAddress.tr,
                        prefixIcon: SvgPicture.asset(
                          ImageConstant.email,
                        )),
                    const SizedBox(height: 12),
                    IntlPhoneField(
                      controller: controller.txtPhoneController.value,
                      style: TextStyleConstant.commonStyle(
                          context: context,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      decoration: InputDecoration(
                          errorBorder: customBorder(context),
                          filled: true,
                          fillColor: ThemeColors.inversePrimary(context),
                          errorStyle: TextStyleConstant.commonStyle(
                              context: context,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.redAccent),
                          focusedBorder: customBorder(context),
                          enabledBorder: customBorder(context),
                          disabledBorder: customBorder(context),
                          border: customBorder(context),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          hintText: AppConstant.phoneNumber.tr,
                          hintStyle: TextStyleConstant.commonStyle(
                              color: ThemeColors.secondary(context),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              context: context)),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        // print(phone.completeNumber);
                      },
                    ),
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
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        CommonInkWell(
                          onTap: () {
                            controller.selectedRadio.value =
                                !controller.selectedRadio.value;
                            controller
                                .update([ControllerId.createAccountKey]);
                          },
                          child: Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: controller.selectedRadio.value
                                        ? ThemeColors.primary(context)
                                        : ThemeColors.onSecondary(context),
                                    width: 1.5),
                                shape: BoxShape.circle),
                            padding: const EdgeInsets.all(2),
                            child: controller.selectedRadio.value
                                ? Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            ThemeColors.primary(context)),
                                  )
                                : const SizedBox(),
                          ),
                        ).marginOnly(right: 8),
                        Flexible(
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyleConstant.commonStyle(
                                    context: context,
                                    color: ThemeColors.secondary(context),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  children: [
                                TextSpan(text: AppConstant.agreeWith.tr),
                                TextSpan(
                                    text: AppConstant.termsPrivacy.tr,
                                    style: TextStyleConstant.commonStyle(
                                      context: context,
                                      color: ColorConstants.commonYellow,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ])),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    CommonButton(
                      title: AppConstant.sigIn.tr,
                      onTap: () {
                        Get.back();
                      },
                    ),
                    const SizedBox(height: 11),
                    CommonButton(
                      buttonColor: ColorConstants.commonYellow,
                      titleColor: ColorConstants.blackBg,
                      title: AppConstant.signUp.tr,
                      onTap: () {
                        // Get.toNamed(
                        //     RouteConstant.setupProfileScreen);
                      },
                    )
                  ],
                ).marginSymmetric(vertical: 30, horizontal: 20)
              ],
            ),
          );
        });
  }
}
