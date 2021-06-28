import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:package_info/package_info.dart';

class DeviceUtil {
  static DeviceUtil? _instance;
  static DeviceInfoPlugin? _deviceInfo;

  static AndroidDeviceInfo? _androidInfo;
  static IosDeviceInfo? _iosInfo;

  static String? appName;
  static String? appId;
  static String? version;
  static String? buildNumber;

  static Future<DeviceUtil> getInstance() async {
    if (_instance == null) {
      _instance = DeviceUtil();
    }

    if (_deviceInfo == null) {
      _deviceInfo = new DeviceInfoPlugin();
    }
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    appName = packageInfo.appName;
    appId = packageInfo.packageName;
    version = packageInfo.version;
    buildNumber = packageInfo.buildNumber;

    Platform.isAndroid
        ? _deviceInfo?.androidInfo.then((value) => _androidInfo = value)
        : _deviceInfo?.iosInfo.then((value) => _iosInfo = value);

    return _instance!;
  }

  String? getDeviceBrand() {
    return Platform.isAndroid ? _androidInfo?.manufacturer : "";
  }

  String getDeviceLocale() {
    return Platform.localeName;
  }

  String getDeviceLanguage() {
    return WidgetsBinding.instance!.window.locales.first.languageCode;
  }

  String? getDeviceOS() {
    return Platform.isAndroid
        ? _androidInfo?.version.release
        : _iosInfo!.systemVersion;
  }

  String getDeviceOSType() {
    return Platform.operatingSystem;
  }

  String getDeviceTimeZoneName() {
    return DateTime.now().timeZoneName;
  }

  String getDeviceTimeZone() {
    return DateTime.now().timeZoneOffset.inHours.toString();
  }

  String getDeviceLocalTime() {
    return DateTime.now().timeZoneOffset.inHours.toString();
  }

  String getVersion() {
    return version!;
  }

  String getBuildNumber() {
    return buildNumber!;
  }

  String getDeviceModel() {
    return Platform.isAndroid ? _androidInfo!.model : _iosInfo!.model;
  }

  String getDeviceType() {
    return Device.get().isTablet ? "Tablet" : "Phone";
  }

  String getAppId() {
    return appId!;
  }

  String isDeviceSimulator() {
    return Platform.isAndroid
        ? "${!_androidInfo!.isPhysicalDevice}"
        : "${!_iosInfo!.isPhysicalDevice}";
  }

  String isDeviceRooted() {
    bool? isDeviceRooted;
    FlutterJailbreakDetection.jailbroken
        .then((value) => isDeviceRooted = value);
    return "${isDeviceRooted ?? false} ";
  }

  String getTimestamp() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  String getDeviceId() {
    return Platform.isAndroid
        ? _androidInfo!.androidId
        : _iosInfo!.identifierForVendor;
  }
}
