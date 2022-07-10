import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'wallet_passes_method_channel.dart';

abstract class WalletPassesPlatform extends PlatformInterface {
  /// Constructs a WalletPassesPlatform.
  WalletPassesPlatform() : super(token: _token);

  static final Object _token = Object();

  static WalletPassesPlatform _instance = MethodChannelWalletPasses();

  /// The default instance of [WalletPassesPlatform] to use.
  ///
  /// Defaults to [MethodChannelWalletPasses].
  static WalletPassesPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WalletPassesPlatform] when
  /// they register themselves.
  static set instance(WalletPassesPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
