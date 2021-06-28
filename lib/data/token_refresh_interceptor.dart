import 'package:dio/dio.dart';
import 'package:movie_db_flutter/data/session.dart';
import 'package:movie_db_flutter/services/navigation_service.dart';
import 'package:movie_db_flutter/utils/preferences_util.dart';

class TokenRefreshInterceptor extends Interceptor {
  final Dio dio;
  final BaseOptions options;
  final PreferenceUtil prefsInstance;
  final NavigationService navigationService;

  TokenRefreshInterceptor(
      this.dio, this.options, this.prefsInstance, this.navigationService);

  @override
  void onError(DioError error, handler) {
    handler.next(error);
  }

  @override
  void onRequest(RequestOptions requestOptions, handler) {
    requestOptions.headers
        .addAll({"Authorization": "Bearer ${Session.token ?? ""}"});
    options.headers.addAll({"Authorization": "Bearer ${Session.token ?? ""}"});
    dio.options = options;

    return handler.next(requestOptions);
  }
}
