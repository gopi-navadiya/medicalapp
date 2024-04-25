import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/image_contstant.dart';

class ProfileController extends GetxController {
  List<SettingItemModel> accountItems = [
    SettingItemModel(icon: ImageConstant.camera, name: "Preferences"),
    SettingItemModel(
      icon: ImageConstant.camera,
      name: "Chat List",
    ),
    SettingItemModel(
      icon: ImageConstant.camera,
      name: "Payment",
    ),
    SettingItemModel(
      icon: ImageConstant.saveMarkIcon,
      name: "Wishlist",
    ),
    SettingItemModel(icon: ImageConstant.camera, name: "Addresses"),
  ];
  List<SettingItemModel> privacyItems = [
    SettingItemModel(icon: ImageConstant.camera, name: "Privacy Setting"),
    SettingItemModel(
      icon: ImageConstant.camera,
      name: "Change Password",
    ),
  ];
  List<SettingItemModel> helpItems = [
    SettingItemModel(icon: ImageConstant.camera, name: "FAQ"),
    SettingItemModel(icon: ImageConstant.camera, name: "Get Help"),
    SettingItemModel(icon: ImageConstant.camera, name: "Sign Out"),
  ];
}

class SettingItemModel {
  String name, icon;

  SettingItemModel({required this.icon, required this.name});
}
