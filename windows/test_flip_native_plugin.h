#ifndef FLUTTER_PLUGIN_TEST_FLIP_NATIVE_PLUGIN_H_
#define FLUTTER_PLUGIN_TEST_FLIP_NATIVE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace test_flip_native {

class TestFlipNativePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TestFlipNativePlugin();

  virtual ~TestFlipNativePlugin();

  // Disallow copy and assign.
  TestFlipNativePlugin(const TestFlipNativePlugin&) = delete;
  TestFlipNativePlugin& operator=(const TestFlipNativePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace test_flip_native

#endif  // FLUTTER_PLUGIN_TEST_FLIP_NATIVE_PLUGIN_H_
