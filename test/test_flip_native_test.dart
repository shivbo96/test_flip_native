// import 'package:flutter_test/flutter_test.dart';
// import 'package:test_flip_native/test_flip_native.dart';
// import 'package:test_flip_native/test_flip_native_platform_interface.dart';
// import 'package:test_flip_native/test_flip_native_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockTestFlipNativePlatform
//     with MockPlatformInterfaceMixin
//     implements TestFlipNativePlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final TestFlipNativePlatform initialPlatform = TestFlipNativePlatform.instance;
//
//   test('$MethodChannelTestFlipNative is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelTestFlipNative>());
//   });
//
//   test('getPlatformVersion', () async {
//     TestFlipNative testFlipNativePlugin = TestFlipNative();
//     MockTestFlipNativePlatform fakePlatform = MockTestFlipNativePlatform();
//     TestFlipNativePlatform.instance = fakePlatform;
//
//     expect(await testFlipNativePlugin.getPlatformVersion(), '42');
//   });
// }
