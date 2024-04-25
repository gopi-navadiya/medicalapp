import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';
class CommonMainAppBar extends StatelessWidget {
  const CommonMainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 36,
            width: 36,
            child: Image.asset(ImageConstant.coloredLogoPng),
        ),
        const Spacer(),
        Row(
          children: [
            SvgPicture.asset(
              ImageConstant.searchIcon,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(ThemeColors.primary(context), BlendMode.srcIn),
            ),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
           //   onTap: () => Get.toNamed(RouteConstant.notificationScreen),
              child: SvgPicture.asset(
                ImageConstant.notificationIcon,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(ThemeColors.primary(context), BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
