import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'movie_plugin_platform_interface.dart';

enum MethodCalls {
  getString('getString'),
  setString('setString'),
  clear('clear'),
  containsKey('containsKey'),
  getInt('getInt'),
  setInt('setInt'),
  getBool('getBool'),
  setBool('setBool'),
  getDouble('getDouble'),
  setDouble('setDouble');

  final String value;

  const MethodCalls(this.value);
}

/// An implementation of [MoviePluginPlatform] that uses method channels.
class MethodChannelMoviePlugin extends MoviePluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('movie_plugin');

  @override
  Future<String?> getString(String key) async {
    return methodChannel.invokeMethod<String?>(MethodCalls.getString.value, {'key': key });
  }

  @override
  Future setString(String key, String value) async {
    return methodChannel.invokeMethod<void>(MethodCalls.setString.value, {'key': key, 'value': value });
  }

  @override
  Future clear() async {
    return methodChannel.invokeMethod<void>(MethodCalls.clear.value);
  }

  @override
  Future<bool?> containsKey(String key) async {
    return methodChannel.invokeMethod<bool>(MethodCalls.containsKey.value, {'key': key });
  }
  @override
  Future<int?> getInt(String key) async {
    return methodChannel.invokeMethod<int?>(MethodCalls.getInt.value, {'key': key });
  }

  @override
  Future setInt(String key, int value) async {
    return methodChannel.invokeMethod<void>(MethodCalls.setInt.value, {'key': key, 'value': value });
  }

  @override
  Future<bool?> getBool(String key) async {
    return methodChannel.invokeMethod<bool?>(MethodCalls.getBool.value, {'key': key });
  }

  @override
  Future setBool(String key, bool value) async {
    return methodChannel.invokeMethod<void>(MethodCalls.setBool.value, {'key': key, 'value': value });
  }

  @override
  Future<double?> getDouble(String key) async {
    return methodChannel.invokeMethod<double?>(MethodCalls.getDouble.value, {'key': key });
  }

  @override
  Future setDouble(String key, double value) async {
    return methodChannel.invokeMethod<void>(MethodCalls.setDouble.value, {'key': key, 'value': value });
  }

}
