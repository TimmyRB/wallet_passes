
import 'wallet_passes_platform_interface.dart';

class WalletPasses {
  Future<String?> getPlatformVersion() {
    return WalletPassesPlatform.instance.getPlatformVersion();
  }
}
