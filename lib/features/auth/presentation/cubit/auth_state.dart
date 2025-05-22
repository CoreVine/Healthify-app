part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

final class ChangeRememberMeState extends AuthState {
  final bool rememberMe;

  const ChangeRememberMeState({required this.rememberMe});

  @override
  List<Object> get props => [rememberMe];
}

final class LoginSuccessState extends AuthState {}

final class LoginLoadingState extends AuthState {}

final class BiometricAvailabilityState extends AuthState {
  final bool isBiometricAvailable;

  const BiometricAvailabilityState({required this.isBiometricAvailable});

  @override
  List<Object> get props => [isBiometricAvailable];
}

final class LoginErrorState extends AuthState {}

