import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/controller_id.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';

import 'package:medicalapp/UI/Screens/MainSection/CartSection/cart_controller.dart';
import 'package:medicalapp/UI/Screens/MainSection/widget/common_main_appbar.dart';

class CartScreen extends GetView<CartController> {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
        init: CartController(),
        id: ControllerId.cartKey,
        builder: (controller) {
          return Scaffold(
            backgroundColor: ThemeColors.background(context),
            appBar: AppBar(
              toolbarHeight: 0,
              scrolledUnderElevation: 0,
              backgroundColor: ThemeColors.background(context),
            ),
            body: Column(
              children: [
                const CommonMainAppBar(),
                const SizedBox(height: 16),
                Expanded(
                  child: HeadlineBodyOneBaseWidget(title: "Cart",),
                ),
              ],
            ).paddingSymmetric(horizontal: 24, vertical: 24),
          );
        },
    );
  }

}
