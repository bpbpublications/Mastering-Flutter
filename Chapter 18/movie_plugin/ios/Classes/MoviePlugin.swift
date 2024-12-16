import Flutter
import UIKit

enum MethodCalls: String {
  case getString = "getString"
  case setString = "setString"
  case clear = "clear"
  case containsKey = "containsKey"
  case getInt = "getInt"
  case setInt = "setInt"
  case getBool = "getBool"
  case setBool = "setBool"
  case getDouble = "getDouble"
  case setDouble = "setDouble"
}

public class MoviePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "movie_plugin", binaryMessenger: registrar.messenger())
    let instance = MoviePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let args = call.arguments as? [String: Any]
    switch MethodCalls(rawValue: call.method) {
    case .getString:
      guard let key = args?["key"] as? String else {
        result(false)
        return
      }
      getString(key: key, result: result)

    case .setString:
      guard let key = args?["key"] as? String, let value = args?["value"] as? String else {
        result(false)
        return
      }
      setString(key: key, value: value, result: result)

    case .clear:
      clear()
      result(true)

    case .containsKey:
      guard let key = args?["key"] as? String else {
        result(false)
        break
      }
      containsKey(key: key, result: result)

    case .getInt:
      guard let key = args?["key"] as? String else {
        result(false)
        return
      }
      getInt(key: key, result: result)

    case .setInt:
      guard let key = args?["key"] as? String, let value = args?["value"] as? Int else {
        result(false)
        return
      }
      setInt(key: key, value: value, result: result)

    case .getBool:
      guard let key = args?["key"] as? String else {
        result(false)
        return
      }
      getBool(key: key, result: result)

    case .setBool:
      guard let key = args?["key"] as? String, let value = args?["value"] as? Bool else {
        result(false)
        return
      }
      setBool(key: key, value: value, result: result)

    case .getDouble:
      guard let key = args?["key"] as? String else {
        result(false)
        return
      }
      getDouble(key: key, result: result)

    case .setDouble:
      guard let key = args?["key"] as? String, let value = args?["value"] as? Double else {
        result(false)
        return
      }
      setDouble(key: key, value: value, result: result)

    default:
      result(FlutterMethodNotImplemented)
    }
  }

  func getString(key: String, result: @escaping FlutterResult) {
    let defaults = UserDefaults.standard
    result(defaults.string(forKey: key))
  }

  func setString(key: String, value: String, result: @escaping FlutterResult) {
    let defaults = UserDefaults.standard
    defaults.set(value, forKey: key)
    result(true)
  }

  func clear() {
    let defaults = UserDefaults.standard
    if let appDomain = Bundle.main.bundleIdentifier,
      let prefs = defaults.persistentDomain(forName: appDomain)
    {
      for (key, _) in prefs {
        defaults.removeObject(forKey: key)
      }
    }
  }

  func containsKey(key: String, result: @escaping FlutterResult) {
    let defaults = UserDefaults.standard
    let value = defaults.object(forKey: key)
    result(value != nil)
  }

  func getInt(key: String, result: @escaping FlutterResult) {
    let defaults = UserDefaults.standard
    result(defaults.integer(forKey: key))
  }

  func setInt(key: String, value: Int, result: @escaping FlutterResult) {
    let defaults = UserDefaults.standard
    defaults.set(value, forKey: key)
    result(true)
  }

  func getBool(key: String, result: @escaping FlutterResult) {
    let defaults = UserDefaults.standard
    result(defaults.bool(forKey: key))
  }

  func setBool(key: String, value: Bool, result: @escaping FlutterResult) {
    let defaults = UserDefaults.standard
    defaults.set(value, forKey: key)
    result(true)
  }

  func getDouble(key: String, result: @escaping FlutterResult) {
    let defaults = UserDefaults.standard
    result(defaults.double(forKey: key))
  }

  func setDouble(key: String, value: Double, result: @escaping FlutterResult) {
    let defaults = UserDefaults.standard
    defaults.set(value, forKey: key)
    result(true)
  }

}
