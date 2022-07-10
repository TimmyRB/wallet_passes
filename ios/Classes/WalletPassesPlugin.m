#import "WalletPassesPlugin.h"
#if __has_include(<wallet_passes/wallet_passes-Swift.h>)
#import <wallet_passes/wallet_passes-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wallet_passes-Swift.h"
#endif

@implementation WalletPassesPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWalletPassesPlugin registerWithRegistrar:registrar];
}
@end
