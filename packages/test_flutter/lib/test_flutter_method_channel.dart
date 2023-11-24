import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'test_flutter_platform_interface.dart';

/// An implementation of [TestFlutterPlatform] that uses method channels.
class MethodChannelTestFlutter extends TestFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('test_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
