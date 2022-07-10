import 'package:flutter_test/flutter_test.dart';
import 'package:wallet_passes/wallet_passes.dart';
import 'package:wallet_passes/wallet_passes_platform_interface.dart';
import 'package:wallet_passes/wallet_passes_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWalletPassesPlatform 
    with MockPlatformInterfaceMixin
    implements WalletPassesPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WalletPassesPlatform initialPlatform = WalletPassesPlatform.instance;

  test('$MethodChannelWalletPasses is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWalletPasses>());
  });

  test('getPlatformVersion', () async {
    WalletPasses walletPassesPlugin = WalletPasses();
    MockWalletPassesPlatform fakePlatform = MockWalletPassesPlatform();
    WalletPassesPlatform.instance = fakePlatform;
  
    expect(await walletPassesPlugin.getPlatformVersion(), '42');
  });
}
