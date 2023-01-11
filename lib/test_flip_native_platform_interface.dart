import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'test_flip_native_method_channel.dart';

abstract class TestFlipNativePlatform extends PlatformInterface {
  /// Constructs a TestFlipNativePlatform.
  TestFlipNativePlatform() : super(token: _token);

  static final Object _token = Object();

  static TestFlipNativePlatform _instance = MethodChannelTestFlipNative();

  /// The default instance of [TestFlipNativePlatform] to use.
  ///
  /// Defaults to [MethodChannelTestFlipNative].
  static TestFlipNativePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TestFlipNativePlatform] when
  /// they register themselves.
  static set instance(TestFlipNativePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
