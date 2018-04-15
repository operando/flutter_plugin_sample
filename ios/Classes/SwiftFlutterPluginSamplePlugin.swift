import Flutter
import UIKit
    
public class SwiftFlutterPluginSamplePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin_sample", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPluginSamplePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
        result("iOS " + UIDevice.current.systemVersion)
    case "getModel":
        result(UIDevice.current.model)
    default:
        result(nil)
    }
  }
}
