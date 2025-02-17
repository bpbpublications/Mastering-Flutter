import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  final SharedPreferences preferences;

  Prefs(this.preferences);

  void setString(String key, String value) {
    preferences.setString(key, value);
  }

  String? getString(String key) {
    return preferences.getString(key);
  }

  void setInt(String key, int value) {
    preferences.setInt(key, value);
  }

  int? getInt(String key) {
    return preferences.getInt(key);
  }

  void setBool(String key, bool value) {
    preferences.setBool(key, value);
  }

  bool? getBool(String key) {
    return preferences.getBool(key);
  }

  void setDouble(String key, double value) {
    preferences.setDouble(key, value);
  }

  double? getDouble(String key) {
    return preferences.getDouble(key);
  }
}
