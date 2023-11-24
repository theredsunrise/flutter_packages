import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'test_flutter_method_channel.dart';

abstract class TestFlutterPlatform extends PlatformInterface {
  /// Constructs a TestFlutterPlatform.
  TestFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static TestFlutterPlatform _instance = MethodChannelTestFlutter();

  /// The default instance of [TestFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelTestFlutter].
  static TestFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TestFlutterPlatform] when
  /// they register themselves.
  static set instance(TestFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
