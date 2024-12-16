import 'package:test/test.dart';
import 'package:movie_plugin/movie_plugin.dart';
import 'package:movie_plugin/movie_plugin_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMoviePluginPlatform
    with MockPlatformInterfaceMixin
    implements MoviePluginPlatform {
  Map<String, dynamic> mockPrefs = <String, dynamic>{};

  @override
  Future clear() {
    mockPrefs.clear();
    return Future.value(true);
  }

  @override
  Future<bool?> containsKey(String key) {
    return Future.value(mockPrefs.containsKey(key));
  }

  @override
  Future<String?> getString(String key) {
    return Future.value(mockPrefs[key]);
  }

  @override
  Future setString(String key, String value) {
    mockPrefs[key] = value;
    return Future.value(true);
  }

  Future<int?> getInt(String key) async {
    return Future.value(mockPrefs[key]);
  }

  @override
  Future setInt(String key, int value) async {
    mockPrefs[key] = value;
    return Future.value(true);
  }

  @override
  Future<bool?> getBool(String key) async {
    return Future.value(mockPrefs[key]);
  }

  @override
  Future setBool(String key, bool value) async {
    mockPrefs[key] = value;
    return Future.value(true);
  }

  @override
  Future<double?> getDouble(String key) async {
    return Future.value(mockPrefs[key]);
  }

  @override
  Future setDouble(String key, double value) async {
    mockPrefs[key] = value;
    return Future.value(true);
  }
}

void main() {
  late MoviePlugin moviePlugin;
  late MockMoviePluginPlatform fakePlatform;

  void setup() {
    moviePlugin = MoviePlugin();
    fakePlatform = MockMoviePluginPlatform();
    MoviePluginPlatform.instance = fakePlatform;
  }

  test('setString: Add One item', () async {
    setup();

    expect(await moviePlugin.setString('Test', 'Value 1'), true);
  });
  test('setString: Add One item and then clear', () async {
    setup();

    expect(await moviePlugin.setString('Test', 'Value 1'), true);
    expect(await moviePlugin.clear(), true);
    expect(await moviePlugin.containsKey('Test'), false);
  });

  test('setString: Add One item and then get the string', () async {
    setup();

    expect(await moviePlugin.setString('Test', 'Value 1'), true);
    expect(await moviePlugin.getString('Test'), 'Value 1');
  });

  test('Test Ints', () async {
    setup();

    expect(await moviePlugin.setInt('IntKey', 1), true);
    expect(await moviePlugin.getInt('IntKey'), 1);
    expect(await moviePlugin.containsKey('IntKey'), true);
    expect(await moviePlugin.clear(), true);
    expect(await moviePlugin.containsKey('IntKey'), false);
  });
}
