import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/controller_id.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';
import 'package:medicalapp/UI/Screens/MainSection/ProfileSection/SubWidgets/setting_tile.dart';
import 'package:medicalapp/UI/Screens/MainSection/ProfileSection/profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        id: ControllerId.profileKey,
        builder: (controller) {
          return Scaffold(
            backgroundColor: ThemeColors.background(context),
            appBar: AppBar(
              toolbarHeight: 0,
              scrolledUnderElevation: 0,
              backgroundColor: ColorConstants.commonYellow,
            ),
            body: ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                appBar(context),
                const SizedBox(
                  height: 20,
                ),
                SettingsTile(title: "Account", dataList: controller.accountItems),
                SettingsTile(title: "Privacy", dataList: controller.privacyItems),
                SettingsTile(title: "Help & Support", dataList: controller.helpItems),
                const SizedBox(
                  height: 65,
                ),
              ],
            ),
          );
        },
    );
  }

  Widget appBar(context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstant.profileScreenBg),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(24)),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Row(
                        children: [
                          SvgPicture.asset(
                            ImageConstant.searchIcon,
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              ImageConstant.notificationIcon,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: ThemeColors.background(context),
                            shape: BoxShape.circle,
                            border: Border.all(color: ColorConstants.white),
                            boxShadow: [
                              BoxShadow(
                                  color: ThemeColors.shadow(context)
                                      .withOpacity(.1),
                                  blurRadius: 20,
                                  offset: const Offset(0, 6)),
                            ],
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.menPng,
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const HeadlineBodyOneBaseWidget(
                              title: 'Savannah Robertson',
                              fontSize: 16.0,
                              titleColor: Colors.black,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: ColorConstants.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: const HeadlineBodyOneBaseWidget(
                                title: '@Savannah92',
                                fontSize: 8.0,
                                titleColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ).paddingSymmetric(horizontal: 24, vertical: 32),
                  const SizedBox(
                    height: 45,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 45,
            ),
          ],
        ),
        Container(
          height: 69,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ThemeColors.inversePrimary(context),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: ThemeColors.shadow(context).withOpacity(.12),
                  blurRadius: 30,
                  offset: const Offset(0, 6)),
            ],
          ),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConstant.walletIcon,
                    colorFilter: ColorFilter.mode(
                        ThemeColors.buttonActive, BlendMode.srcIn),
                  ),
                  HeadlineBodyOneBaseWidget(
                    title: 'Wallet',
                    fontSize: 10,
                    titleColor: ThemeColors.onSecondary(context),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConstant.basketIcon,
                    colorFilter: ColorFilter.mode(
                        ThemeColors.buttonActive, BlendMode.srcIn),
                  ),
                  HeadlineBodyOneBaseWidget(
                    title: 'Order',
                    fontSize: 10,
                    titleColor: ThemeColors.onSecondary(context),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConstant.discountIcon,
                    colorFilter: ColorFilter.mode(
                        ThemeColors.buttonActive, BlendMode.srcIn),
                  ),
                  HeadlineBodyOneBaseWidget(
                    title: 'Discount',
                    fontSize: 10,
                    titleColor: ThemeColors.onSecondary(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
