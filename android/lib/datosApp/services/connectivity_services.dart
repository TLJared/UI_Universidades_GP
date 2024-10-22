import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectivityService extends GetxService {
  var isConnected = false.obs;
  late StreamSubscription<ConnectivityResult> _subscription;

  @override
  void onInit() {
    super.onInit();
    // Subscribe to connectivity changes
    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      isConnected.value = result != ConnectivityResult.none;
    });

    // Check the initial connectivity status
    _checkInitialConnectivity();
  }

  Future<void> _checkInitialConnectivity() async {
    final result = await Connectivity().checkConnectivity();
    isConnected.value = result != ConnectivityResult.none;
  }

  @override
  void onClose() {
    // Cancel the subscription when the service is disposed
    _subscription.cancel();
    super.onClose();
  }
}
