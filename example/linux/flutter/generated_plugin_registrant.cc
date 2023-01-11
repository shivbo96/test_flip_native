//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <test_flip_native/test_flip_native_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) test_flip_native_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TestFlipNativePlugin");
  test_flip_native_plugin_register_with_registrar(test_flip_native_registrar);
}
