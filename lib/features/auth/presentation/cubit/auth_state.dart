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
final class ChangeAcceptedTermsState extends AuthState {
  final bool isTermsAccepted;

  const ChangeAcceptedTermsState({required this.isTermsAccepted});

  @override
  List<Object> get props => [isTermsAccepted];
}
class AuthPasswordVisibilityChanged extends AuthState {
  final bool isObscure;
  final bool isConfirm;

  const AuthPasswordVisibilityChanged(this.isObscure, {this.isConfirm = false});

  @override
  List<Object> get props => [isObscure, isConfirm];
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
final class RegisterErrorState extends AuthState {}
final class RegisterSuccessState extends AuthState {}
final class AuthCodeVerified extends AuthState {}


