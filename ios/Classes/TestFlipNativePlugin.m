#import "TestFlipNativePlugin.h"
#if __has_include(<test_flip_native/test_flip_native-Swift.h>)
#import <test_flip_native/test_flip_native-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "test_flip_native-Swift.h"
#endif

@implementation TestFlipNativePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTestFlipNativePlugin registerWithRegistrar:registrar];
}
@end
