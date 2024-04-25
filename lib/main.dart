

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicalapp/Infrastructure/Commons/app_pages.dart';
import 'package:medicalapp/Infrastructure/Commons/theme_constant.dart';
import 'package:medicalapp/Infrastructure/Lang/translation_service.dart';
import 'package:medicalapp/Infrastructure/Network/connectivity_service.dart';
import 'package:medicalapp/UI/Screens/NoInternet/nointernet_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final ConnectivityService connectivityService = Get.put(ConnectivityService());
    return Obx(
            () {
          if (connectivityService.hasInternet) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              darkTheme: ConstantTheme.darkTheme,
              theme: ConstantTheme.lightTheme,
               themeMode: ThemeMode.system,
              getPages: AppPages.routes,
              initialRoute: AppPages.initial,
              locale: TranslationService.locale,
              fallbackLocale: TranslationService.fallbackLocale,
              translations: TranslationService(),
            );
          }else {
            return  MaterialApp(
              locale: TranslationService.locale,
              darkTheme: ConstantTheme.darkTheme,
              theme: ConstantTheme.lightTheme,
              themeMode: ThemeMode.system,
              debugShowCheckedModeBanner: false,
              home: const NoInternetScreen(),


            );
          }

        });

  }
}
