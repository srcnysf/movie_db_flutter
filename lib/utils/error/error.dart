import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class DefaultError with _$DefaultError {
  // "Nested" unions have private generated classes (underscore)
  const factory DefaultError.unknownError(String message) = _UnknownError;
  const factory DefaultError.apiError(int code, String message) = _ApiError;
  const factory DefaultError.businessError(int code, String message) =
      _BusinessError;
  const factory DefaultError.invalidResponseError(String message) =
      _InvalidResponseError;
  const factory DefaultError.authenticationError() = _AuthenticationError;
}
