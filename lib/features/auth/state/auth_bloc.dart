
import 'package:signals/signals.dart';
import 'package:solana_rewards/features/auth/mobile_wallet_adapter.dart';
import 'package:solana_rewards/features/auth/state/auth_state.dart';
import 'package:solana_rewards/infra/dependencies.dart';

class AuthBloc {

  final MobileWalletAdapter _mobileWalletAdapter;
  final state = signal(const AuthState());

  AuthBloc(
    this._mobileWalletAdapter,
  );

  AuthBloc.di() : this(
      getIt(),
  );

  void connect() async {
    final publicKey = await _mobileWalletAdapter.authorize();
    state.value = state.value.copyWith(
      publicKey: publicKey,
    );
  }

}