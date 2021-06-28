import 'package:movie_db_flutter/services/api_service.dart';
import 'package:movie_db_flutter/utils/error/default_error_factory.dart';

class Repository {
  final ApiService _apiService;

  final DefaultErrorFactory errorFactory;

  Repository(this._apiService, this.errorFactory);
}
