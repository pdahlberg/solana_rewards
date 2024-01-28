
import 'dart:typed_data';

import 'package:equatable/equatable.dart';

class AuthState extends Equatable {

  final Uint8List? publicKey;

  const AuthState({
    this.publicKey,
  });

  @override
  List<Object?> get props => [publicKey];

  AuthState copyWith({
    Uint8List? publicKey,
  }) {
    return AuthState(
      publicKey: publicKey ?? this.publicKey,
    );
  }

}