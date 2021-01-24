#import "CompanionHealthPlugin.h"
#if __has_include(<companion_health/companion_health-Swift.h>)
#import <companion_health/companion_health-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "companion_health-Swift.h"
#endif

@implementation CompanionHealthPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCompanionHealthPlugin registerWithRegistrar:registrar];
}
@end
