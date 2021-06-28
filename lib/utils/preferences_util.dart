import 'package:movie_db_flutter/data/session.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtil {
  static PreferenceUtil? _instance;
  static SharedPreferences? _preferences;

  static const TOKEN = 'TOKEN';
  static const THEME = 'THEME';

  Session session = Session();

  static Future<PreferenceUtil> getInstance() async {
    if (_instance == null) {
      _instance = PreferenceUtil();
    }

    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }

    return _instance!;
  }

  bool? get theme {
    bool? theme = _getTheme();
    if (theme == null) {
      return false;
    }

    return theme;
  }

  set theme(bool? isDark) {
    _setTheme(isDark);
  }

  String get token => getToken(TOKEN) ?? "";

  set token(String token) {
    setToken(token);
  }

  void removeToken() {
    Session.token = null;
    _preferences!.remove(TOKEN);
  }

  String? getToken(String key) {
    String? value = _preferences!.getString(key);
    Session.token = value;
    return value;
  }

  setToken(String content) {
    Session.token = content;
    _preferences!.setString(TOKEN, content);
  }

  bool? _getTheme() {
    return _preferences!.getBool(THEME);
  }

  _setTheme(bool? isDark) {
    _preferences?.setBool(THEME, isDark!);
  }
}
