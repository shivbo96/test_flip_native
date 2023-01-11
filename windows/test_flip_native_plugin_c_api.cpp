#include "include/test_flip_native/test_flip_native_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "test_flip_native_plugin.h"

void TestFlipNativePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  test_flip_native::TestFlipNativePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
