import 'package:flutter/material.dart';

import 'error.dart';

abstract class ErrorFactory {
  DefaultError createUnknownError();

  DefaultError createApiError(int code, String message);

  DefaultError createErrorFromThrowable(FlutterError t);

  DefaultError createBusinessError(int code, String message);

  DefaultError createAuthenticationError();

  DefaultError createInvalidResponseError();
}
