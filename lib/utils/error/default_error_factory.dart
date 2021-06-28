import 'package:flutter/foundation.dart';
import 'package:movie_db_flutter/utils/error/error.dart';
import 'package:movie_db_flutter/utils/error/error_factory.dart';

class DefaultErrorFactory extends ErrorFactory {
  @override
  DefaultError createApiError(int code, String message) =>
      DefaultError.apiError(code, message);

  @override
  DefaultError createAuthenticationError() =>
      DefaultError.authenticationError();

  @override
  DefaultError createBusinessError(int code, String message) =>
      DefaultError.businessError(code, message);

  @override
  DefaultError createErrorFromThrowable(FlutterError t) =>
      DefaultError.apiError(1, t.message);

  @override
  DefaultError createInvalidResponseError() =>
      DefaultError.invalidResponseError("Invalid Response!");
  @override
  DefaultError createUnknownError() =>
      DefaultError.unknownError("Unknown error!");
}
