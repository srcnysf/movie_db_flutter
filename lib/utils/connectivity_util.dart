import 'dart:async';
import 'package:connectivity/connectivity.dart';

class ConnectivityUtil {
  StreamController<ConnectivityStatus> connectionStatusController =
      StreamController<ConnectivityStatus>.broadcast();

  ConnectivityUtil() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      connectionStatusController.add(_getStatusFromResult(result));
    });
  }
  Future<ConnectivityStatus> getConnectivityStatus() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return _getStatusFromResult(connectivityResult);
  }

  // Convert from the third part enum to our own enum
  ConnectivityStatus _getStatusFromResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
        return ConnectivityStatus.MOBILE;
      case ConnectivityResult.wifi:
        return ConnectivityStatus.WIFI;
      case ConnectivityResult.none:
        return ConnectivityStatus.OFFLINE;
      default:
        return ConnectivityStatus.OFFLINE;
    }
  }
}

enum ConnectivityStatus { WIFI, MOBILE, OFFLINE }
