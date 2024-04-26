import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/color_constant.dart';
import 'package:medicalapp/Infrastructure/Models/scanned_data_model.dart';
import 'package:medicalapp/UI/Commons/Widgets/common_text_view.dart';

import 'home_controller.dart';
class HomeScreen extends GetView<HomeController> {
  const HomeScreen( {Key? key,required this.scannedItems}) : super(key: key);
  final List<ScannedItem> scannedItems;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return  Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                 const HeadlineBodyOneBaseWidget(
                   title: "Home Screen",

                 ),
                scannedItems.isEmpty?
                    const HeadlineBodyOneBaseWidget(title: "No scanned data"):
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: scannedItems.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        HeadlineBodyOneBaseWidget(title: scannedItems[index].title,
                            titleColor: ThemeColors.primary(context),
                            fontSize: 14
                        ),HeadlineBodyOneBaseWidget(title: scannedItems[index].description,
                            titleColor: ThemeColors.primary(context),
                            fontSize: 14
                        ),HeadlineBodyOneBaseWidget(title: "Size: ${scannedItems[index].size}",
                            titleColor: ThemeColors.primary(context),
                            fontSize: 14
                        ),HeadlineBodyOneBaseWidget(title: "Category: ${scannedItems[index].category}",
                            titleColor: ThemeColors.primary(context),
                            fontSize: 14
                        ),HeadlineBodyOneBaseWidget(title: "Brand: ${scannedItems[index].brand}",
                            titleColor: ThemeColors.primary(context),
                            fontSize: 14
                        ),HeadlineBodyOneBaseWidget(title: "Availability: ${scannedItems[index].offers?.first.availability}",
                            titleColor: ThemeColors.primary(context),
                            fontSize: 14
                        ),HeadlineBodyOneBaseWidget(title: "Price: ${scannedItems[index].offers?.first.price}",
                            titleColor: ThemeColors.primary(context),
                            fontSize: 14
                        ),

                      ],
                    );
                  },)
              ],
            ),
          );
        });
  }
}
