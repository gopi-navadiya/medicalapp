import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:medicalapp/Infrastructure/Commons/commontoast.dart';
import 'package:medicalapp/Infrastructure/Models/scanned_data_model.dart';

class ApiMethods {
  static Future<ScannedDataModel?> getDataFromScanner({required String upc,required BuildContext context}) async {
    var apiUrl = 'https://api.upcitemdb.com/prod/trial/lookup?upc=$upc';

    var response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      ScannedDataModel scannedDataModel = ScannedDataModel.fromMap(jsonDecode(response.body));
      return scannedDataModel;
    } else {
      showTopToast(context: context,msg: jsonDecode(response.body)['message']);
    }
    return null;
  }
}
