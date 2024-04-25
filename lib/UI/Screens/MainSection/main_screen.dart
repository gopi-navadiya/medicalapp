import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/controller_id.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';
import 'package:medicalapp/UI/Screens/MainSection/CartSection/cart_screen.dart';
import 'package:medicalapp/UI/Screens/MainSection/ProfileSection/profile_screen.dart';
import 'package:medicalapp/UI/Screens/MainSection/QrSection/qr_screen.dart';
import 'package:medicalapp/UI/Screens/MainSection/WishListSection/wishlist_screen.dart';

import 'HomeSection/home_screen.dart';
import 'main_controller.dart';
import 'widget/curved_navigation_bar.dart';
import 'widget/curved_navigation_bar_item.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        init: MainController(),
        id: ControllerId.loginKey,
        builder: (controller) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light
                .copyWith(systemNavigationBarColor: ThemeColors.inversePrimary(context)),
            child: Scaffold(
              backgroundColor: ThemeColors.background(context),
              body: PageView(
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) => controller.currentPage.value = value,
                controller: controller.pageController,
                children: [
                  const CommonWrapper(
                    child: HomeScreen(),
                  ),
                  const CommonWrapper(
                    child: CartScreen(),
                  ),
                  CommonWrapper(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  const CommonWrapper(
                    child: WishListScreen(),
                  ),
                  const CommonWrapper(
                    child: ProfileScreen(),
                  ),
                ],
              ),
              extendBody: true,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: ThemeColors.shadow(context).withOpacity(.3),
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: CurvedNavigationBar(
                  index: 0,
                  iconPadding: 18,
                  items: [
                    CurvedNavigationBarItem(
                      child: SvgPicture.asset(
                        ImageConstant.homeIcon,
                        colorFilter: ColorFilter.mode(
                            ThemeColors.primary(context), BlendMode.srcIn),
                      ),
                    ),
                    CurvedNavigationBarItem(
                      child: SvgPicture.asset(
                        ImageConstant.basketIcon,
                        colorFilter: ColorFilter.mode(
                            ThemeColors.primary(context), BlendMode.srcIn),
                      ),
                    ),
                    CurvedNavigationBarItem(
                      child: SvgPicture.asset(
                        ImageConstant.scanIcon,
                        colorFilter: ColorFilter.mode(
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.dark
                                ? ColorConstants.blackBg
                                : ColorConstants.whiteBg,
                            BlendMode.srcIn),
                      ),
                    ),
                    CurvedNavigationBarItem(
                      child: SvgPicture.asset(
                        ImageConstant.saveMarkIcon,
                        colorFilter: ColorFilter.mode(
                            ThemeColors.primary(context), BlendMode.srcIn),
                      ),
                    ),
                    CurvedNavigationBarItem(
                      child: SvgPicture.asset(
                        ImageConstant.personIcon,
                        colorFilter: ColorFilter.mode(
                            ThemeColors.primary(context), BlendMode.srcIn),
                      ),
                    ),
                  ],
                  color:
                      MediaQuery.of(context).platformBrightness == Brightness.dark
                          ? ThemeColors.inversePrimary(context)
                          : ColorConstants.white,
                  buttonBackgroundColor:
                      MediaQuery.of(context).platformBrightness == Brightness.dark
                          ? ThemeColors.buttonActive
                          : ThemeColors.primary(context),
                  backgroundColor: Colors.transparent,
                  animationCurve: Curves.easeInOut,
                  onTap: (index) {
                    if (index == 2) {
                      Get.to(const QrScreen());
                      return;
                    }
                    controller.currentPage.value = index;
                    controller.update();
                    controller.animateToPage(index);
                  },
                  letIndexChange: (index) => true,
                ),
              ),
            ),
          );
        });
  }
}
