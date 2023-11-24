import Flutter
import UIKit

public class TestFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "test_flutter", binaryMessenger: registrar.messenger())
    let instance = TestFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS XXX")
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
