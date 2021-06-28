class Session {
  static Session _singleton = Session._();
  static String? token = "";

  factory Session() {
    return _singleton;
  }

  Session._();
}
