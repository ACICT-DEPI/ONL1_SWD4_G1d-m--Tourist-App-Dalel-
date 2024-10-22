class AuthState {}

class AuthInitial extends AuthState {}

class SignUpLoadingState extends AuthState {}

class SignUpSuccessState extends AuthState {}

class SignUpFailureState extends AuthState {
  final String errMessage;

  SignUpFailureState({required this.errMessage});
}

class SignInLoadingState extends AuthState {}

class SignInSuccessState extends AuthState {}

class SignInFailureState extends AuthState {
  final String errMessage;

  SignInFailureState({required this.errMessage});
}

class TermsAndConditionUpdateState extends AuthState {}

final class ScurePasswordTextUpdateState extends AuthState {}

class ResetPasswordLoadingState extends AuthState {}

class ResetPasswordSuccessState extends AuthState {}

class ResetPasswordFailureState extends AuthState {
  final String errMessage;

  ResetPasswordFailureState({required this.errMessage});
}
