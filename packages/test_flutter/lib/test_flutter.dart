
import 'test_flutter_platform_interface.dart';

class TestFlutter {
  Future<String?> getPlatformVersion() {
    return TestFlutterPlatform.instance.getPlatformVersion();
  }
}
