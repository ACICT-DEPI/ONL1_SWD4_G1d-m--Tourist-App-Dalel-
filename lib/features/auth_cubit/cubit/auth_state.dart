class AuthState {}

class AuthInitial extends AuthState {}

class SignUpLoadingState extends AuthState {}

class SingUpSuccessState extends AuthState {}

class SignUpFailureState extends AuthState {
  final String errMessage;

  SignUpFailureState({required this.errMessage});
}

class TermsAndConditionUpdateState extends AuthState {}

final class ScurePasswordTextUpdateState extends AuthState {}

class SigInLoadingState extends AuthState {}

class SignInSuccessState extends AuthState {}

class SignInFailureState extends AuthState {
  final String errMessage;

  SignInFailureState({required this.errMessage});
}
