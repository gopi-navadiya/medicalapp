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
        id: ControllerId.qrKey,
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
                  HeadlineBodyOneBaseWidget(
                    title: "Wish list",
                  )

                ],
              ).paddingSymmetric(horizontal: 24, vertical: 24),
            ),
          );
        });
  }

}
