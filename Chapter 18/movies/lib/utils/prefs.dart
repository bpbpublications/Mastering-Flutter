import 'package:movie_plugin/movie_plugin.dart';

class Prefs {
  final MoviePlugin preferences;

  Prefs(this.preferences);

  Future setString(String key, String value) async {
    preferences.setString(key, value);
  }

  Future<String?> getString(String key) async {
    return await preferences.getString(key);
  }

  Future setInt(String key, int value) async {
    preferences.setInt(key, value);
  }

  Future<int?> getInt(String key) async {
    return preferences.getInt(key);
  }

  Future setBool(String key, bool value) async {
    preferences.setBool(key, value);
  }

  Future<bool?> getBool(String key) async {
    return preferences.getBool(key);
  }

  Future setDouble(String key, double value) async {
    preferences.setDouble(key, value);
  }

  Future<double?> getDouble(String key) async {
    return preferences.getDouble(key);
  }
}
