import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_flip_native/test_flip_native_method_channel.dart';

void main() {
  MethodChannelTestFlipNative platform = MethodChannelTestFlipNative();
  const MethodChannel channel = MethodChannel('');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
