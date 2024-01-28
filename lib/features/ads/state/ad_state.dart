
import 'package:equatable/equatable.dart';

class AdState extends Equatable {

  final RewardedAd? ad;

  const AdState({
    this.ad,
  });

  AdState copyWith({
    RewardedAd? ad,
  }) {
    return AdState(
      ad: ad ?? this.ad,
    );
  }

}