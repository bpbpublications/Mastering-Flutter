package com.bpb.movie_plugin


import android.content.Context
import android.content.SharedPreferences
import android.util.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

enum class MethodCalls(val value: String) {
    GetString("getString"),
    SetString("setString"),
    Clear("clear"),
    ContainsKey("containsKey"),
    GetInt("getInt"),
    SetInt("setInt"),
    GetDouble("getDouble"),
    SetDouble("setDouble"),
    GetBool("getBool"),
    SetBool("setBool"),
}

/** MoviePlugin */
class MoviePlugin : FlutterPlugin, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private lateinit var sharedPreferences: SharedPreferences

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "movie_plugin")
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext
        sharedPreferences = context.getSharedPreferences("movie_plugin", Context.MODE_PRIVATE)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        Log.e("MoviePlugin", "onMethodCall: ${call.method}")
        when (call.method) {
            MethodCalls.GetString.value -> {
                val key = call.argument<String>("key")
                Log.e("MoviePlugin", "key: $key")
                if (key == null) {
                    result.error("INVALID_ARGUMENT", "Key cannot be null", null)
                    return
                }
                getString(key, result)
            }

            MethodCalls.SetString.value -> {
                val key = call.argument<String>("key")
                val value = call.argument<String>("value")
                Log.e("MoviePlugin", "key: $key value: $value")
                if (key == null) {
                    result.error("INVALID_ARGUMENT", "Key cannot be null", null)
                    return
                }
                if (value == null) {
                    result.error("INVALID_ARGUMENT", "value cannot be null", null)
                    return
                }
                setString(key, value, result)
            }

            MethodCalls.Clear.value -> {
                clear(result)
            }

            MethodCalls.ContainsKey.value -> {
                val key = call.argument<String>("key")
                if (key == null) {
                    result.error("INVALID_ARGUMENT", "Key cannot be null", null)
                    return
                }
                containsKey(key, result)
            }

            MethodCalls.GetInt.value -> {
                val key = call.argument<String>("key")
                if (key == null) {
                    result.error("INVALID_ARGUMENT", "Key cannot be null", null)
                    return
                }
                getInt(key, result)
            }

            MethodCalls.SetInt.value -> {
                val key = call.argument<String>("key")
                val value = call.argument<Int>("value")
                if (key == null) {
                    result.error("INVALID_ARGUMENT", "Key cannot be null", null)
                    return
                }
                if (value == null) {
                    result.error("INVALID_ARGUMENT", "value cannot be null", null)
                    return
                }
                setInt(key, value, result)
            }

            MethodCalls.GetDouble.value -> {
                val key = call.argument<String>("key")
                if (key == null) {
                    result.error("INVALID_ARGUMENT", "Key cannot be null", null)
                    return
                }
                getDouble(key, result)
            }

            MethodCalls.SetDouble.value -> {
                val key = call.argument<String>("key")
                val value = call.argument<Double>("value")
                if (key == null) {
                    result.error("INVALID_ARGUMENT", "Key cannot be null", null)
                    return
                }
                if (value == null) {
                    result.error("INVALID_ARGUMENT", "value cannot be null", null)
                    return
                }
                setDouble(key, value, result)
            }

            MethodCalls.GetBool.value -> {
                val key = call.argument<String>("key")
                if (key == null) {
                    result.error("INVALID_ARGUMENT", "Key cannot be null", null)
                    return
                }
                getBool(key, result)
            }

            MethodCalls.SetBool.value -> {
                val key = call.argument<String>("key")
                val value = call.argument<Boolean>("value")
                if (key == null) {
                    result.error("INVALID_ARGUMENT", "Key cannot be null", null)
                    return
                }
                if (value == null) {
                    result.error("INVALID_ARGUMENT", "value cannot be null", null)
                    return
                }
                setBool(key, value, result)
            }

        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    private fun getString(key: String, result: Result) {
        val value = sharedPreferences.getString(key, null)
        Log.e("MoviePlugin", "getString: key: $key value: $value")
        result.success(value)
    }

    private fun setString(key: String, value: String, result: Result) {
        val commitResult = sharedPreferences.edit().putString(key, value).commit()
        Log.e("MoviePlugin", "setString: key: $key value: $value commitResult: $commitResult")
        result.success(commitResult)
    }

    private fun clear(result: Result) {
        val commitResult = sharedPreferences.edit().clear().commit()
        result.success(commitResult)
    }

    private fun containsKey(key: String, result: Result) {
        val value = sharedPreferences.contains(key)
        result.success(value)
    }

    private fun getInt(key: String, result: Result) {
        val value = sharedPreferences.getInt(key, 0)
        result.success(value)
    }

    private fun setInt(key: String, value: Int, result: Result) {
        val commitResult = sharedPreferences.edit().putInt(key, value).commit()
        result.success(commitResult)
    }

    private fun getDouble(key: String, result: Result) {
        val value = sharedPreferences.getFloat(key, 0.0f).toDouble()
        result.success(value)
    }

    private fun setDouble(key: String, value: Double, result: Result) {
        val commitResult = sharedPreferences.edit().putFloat(key, value.toFloat()).commit()
        result.success(commitResult)
    }

    private fun getBool(key: String, result: Result) {
        val value = sharedPreferences.getBoolean(key, false)
        result.success(value)
    }

    private fun setBool(key: String, value: Boolean, result: Result) {
        val commitResult = sharedPreferences.edit().putBoolean(key, value).commit()
        result.success(commitResult)
    }


}
