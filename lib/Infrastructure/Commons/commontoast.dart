import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'color_constant.dart';
showTopToast({required String msg,required BuildContext context}){
  Fluttertoast.showToast(
    msg:msg,
    fontSize: 16,
    backgroundColor: ThemeColors.secondary(context),
    textColor: ThemeColors.primary(context),
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP,
  );
}