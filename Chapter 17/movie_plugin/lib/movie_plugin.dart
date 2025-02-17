import 'movie_plugin_platform_interface.dart';

class MoviePlugin {
  Future<String?> getString(String key) async {
    return MoviePluginPlatform.instance.getString(key);
  }

  Future setString(String key, String value) async {
    return MoviePluginPlatform.instance.setString(key, value);
  }

  Future clear() async {
    return MoviePluginPlatform.instance.clear();
  }

  Future<bool?> containsKey(String key) async {
    return MoviePluginPlatform.instance.containsKey(key);
  }
  Future<int?> getInt(String key) async {
    return MoviePluginPlatform.instance.getInt(key);
  }

  Future setInt(String key, int value) async {
    return MoviePluginPlatform.instance.setInt(key, value);
  }

  Future<double?> getDouble(String key) async {
    return MoviePluginPlatform.instance.getDouble(key);
  }

  Future setDouble(String key, double value) async {
    return MoviePluginPlatform.instance.setDouble(key, value);
  }

  Future<bool?> getBool(String key) async {
    return MoviePluginPlatform.instance.getBool(key);
  }

  Future setBool(String key, bool value) async {
    return MoviePluginPlatform.instance.setBool(key, value);
  }

}
