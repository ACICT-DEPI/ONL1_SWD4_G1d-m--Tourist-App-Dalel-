class AuthState {}

class AuthInitial extends AuthState {}

class SignUpLoadingState extends AuthState {}

class SingUpSuccessState extends AuthState {}

class SignUpFailureState extends AuthState {
  final String errMessage;

  SignUpFailureState({required this.errMessage});
}
class TermsAndConditionUpdateState extends AuthState {}
