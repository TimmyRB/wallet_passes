import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'wallet_passes_platform_interface.dart';

/// An implementation of [WalletPassesPlatform] that uses method channels.
class MethodChannelWalletPasses extends WalletPassesPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('wallet_passes');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
