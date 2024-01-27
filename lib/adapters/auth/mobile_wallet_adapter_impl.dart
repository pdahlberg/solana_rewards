
import 'dart:typed_data';

import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'package:solana_rewards/features/auth/mobile_wallet_adapter.dart';

class MobileWalletAdapterImpl implements MobileWalletAdapter {

  @override
  Future<Uint8List?> authorize() async {
    final session = await LocalAssociationScenario.create();

    session.startActivityForResult(null).ignore();

    final client = await session.start();
    final connectResult = await client.authorize();
    await session.close();

    return connectResult?.publicKey;
  }




}
