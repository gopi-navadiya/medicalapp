import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/controller_id.dart';
import 'package:medicalapp/Infrastructure/Commons/font_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';
import 'package:medicalapp/UI/Screens/MainSection/WishListSection/wishlist_controller.dart';
import 'package:medicalapp/UI/Screens/MainSection/widget/common_main_appbar.dart';

import '../../../../Infrastructure/Commons/color_constant.dart';
import '../../../Commons/Widgets/common_text_view.dart';

class WishListScreen extends GetView<WishListController> {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WishListController>(
        init: WishListController(),
        id: ControllerId.cartKey,
        builder: (controller) {
          return Scaffold(
            backgroundColor: ThemeColors.background(context),
            appBar: AppBar(
              toolbarHeight: 0,
              scrolledUnderElevation: 0,
              backgroundColor: ThemeColors.background(context),
            ),
            body: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  const CommonMainAppBar(),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView(
                      children: [
                        const SizedBox(height: 32),
                        wishListTile(context),
                        wishListTile(context),
                        wishListTile(context),
                        wishListTile(context),
                        const SizedBox(
                          height: 36,
                        ),
                        const HeadlineBodyOneBaseWidget(
                          title: "You May Also Like",
                          fontSize: 24,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        newArrival(),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 24, vertical: 24),
            ),
          );
        });
  }

  Widget newArrival() {
    return GridView.builder(
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        mainAxisExtent: 200,),
      itemBuilder: (context, index) {
        return Container(child: HeadlineBodyOneBaseWidget(title: 'product',),);
      },
    );
  }

  Widget wishListTile(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 60,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ThemeColors.background(context),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: ColorConstants.white),
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.menPng,
                ),
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          width: 14,
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeadlineBodyOneBaseWidget(
                title: 'Fashion',
                fontSize: 8.0,
              ),
              HeadlineBodyOneBaseWidget(
                title: 'T-shirt cotton printed',
                fontSize: 12.0,
              ),
              HeadlineBodyOneBaseWidget(
                title: '\$ 40.00',
                fontSize: 14.0,
                fontFamily: FontConstant.blinkerSemiBold,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ThemeColors.buttonActive,
              ),
              padding: const EdgeInsets.all(6),
              child: SvgPicture.asset(
                ImageConstant.basketIcon,
                height: 16,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
              ),
              padding: const EdgeInsets.all(6),
              child: SvgPicture.string(
                ImageConstant.deleteIcon,
                height: 16,
              ),
            ),
          ],
        ),
      ],
    ).paddingOnly(bottom: 12);
  }

}
