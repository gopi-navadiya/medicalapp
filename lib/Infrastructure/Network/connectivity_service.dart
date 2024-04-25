import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectivityService extends GetxService {
  Rx<ConnectivityResult> connectivityResult = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      connectivityResult.value = result;
    });
  }

  bool get hasInternet =>
      connectivityResult.value != ConnectivityResult.none;

}

