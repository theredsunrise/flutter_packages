import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter/test_flutter.dart';
import 'package:test_flutter/test_flutter_platform_interface.dart';
import 'package:test_flutter/test_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTestFlutterPlatform
    with MockPlatformInterfaceMixin
    implements TestFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TestFlutterPlatform initialPlatform = TestFlutterPlatform.instance;

  test('$MethodChannelTestFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTestFlutter>());
  });

  test('getPlatformVersion', () async {
    TestFlutter testFlutterPlugin = TestFlutter();
    MockTestFlutterPlatform fakePlatform = MockTestFlutterPlatform();
    TestFlutterPlatform.instance = fakePlatform;

    expect(await testFlutterPlugin.getPlatformVersion(), '42');
  });
}
