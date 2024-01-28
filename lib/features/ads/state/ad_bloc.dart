
import 'package:signals/signals.dart';
import 'package:solana_rewards/features/auth/mobile_wallet_adapter.dart';
import 'package:solana_rewards/features/auth/state/auth_state.dart';
import 'package:solana_rewards/infra/dependencies.dart';

class AdBloc {

  final MobileWalletAdapter _mobileWalletAdapter;
  final state = signal(const AdState());

  AdBloc(
    this._mobileWalletAdapter,
  );

  AdBloc.di() : this(
      getIt(),
  );


}