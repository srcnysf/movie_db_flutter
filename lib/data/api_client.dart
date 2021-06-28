import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:movie_db_flutter/data/token_refresh_interceptor.dart';
import 'package:movie_db_flutter/di/locator.dart';
import 'package:movie_db_flutter/services/navigation_service.dart';
import 'package:movie_db_flutter/utils/device_util.dart';
import 'package:movie_db_flutter/utils/preferences_util.dart';

import 'api_constants.dart';
import 'dio_connectivity_retrier.dart';
import 'network_retry_interceptor.dart';

class ApiClient {
  final dio = Dio();
  final NavigationService navigationService;
  final PreferenceUtil prefsInstance;
  static DeviceUtil deviceInfo = locator<DeviceUtil>();

  ApiClient(
    this.prefsInstance,
    this.navigationService,
  );

  BaseOptions options = BaseOptions(
      receiveTimeout: ApiConstants.RECIEVE_TIMEOUT,
      connectTimeout: ApiConstants.CONNECTION_TIMEOUT,
      headers: {
        "content-type": "application/json",
        "Accept-Language": deviceInfo.getDeviceLocale(),
        "X-Client-Platform": deviceInfo.getDeviceOSType(),
        "X-Client-Version-Name": deviceInfo.getVersion(),
        "X-Client-Version-Code": deviceInfo.getBuildNumber(),
        "x-device-brand": deviceInfo.getDeviceBrand(),
        "x-device-os": deviceInfo.getDeviceOS(),
        "x-device-model": deviceInfo.getDeviceModel(),
        "x-app-id": deviceInfo.getAppId(),
        "x-app-is-simulator": deviceInfo.isDeviceSimulator(),
        "x-is-rooted": deviceInfo.isDeviceRooted(),
        "x-timestamp": deviceInfo.getTimestamp(),
        "x-device-time-zone-name": deviceInfo.getDeviceTimeZoneName(),
        "x-device-time-zone": deviceInfo.getDeviceTimeZone(),
        "x-device-local-time": deviceInfo.getDeviceLocalTime(),
        "x-device-id": deviceInfo.getDeviceId(),
      });

  Dio getDio() {
    dio.options = options;
    dio.options.validateStatus = (status) {
      return status! < 500;
    };
    options.baseUrl = ApiConstants.BASE_URL;
    dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: dio,
          connectivity: Connectivity(),
        ),
      ),
    );
    dio.interceptors.add(
        LogInterceptor(requestBody: true, error: true, responseBody: true));
    dio.interceptors.add(TokenRefreshInterceptor(
        dio, options, prefsInstance, navigationService));
    return dio;
  }
}
