part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class PasswordChanged extends LoginEvent {
  final String password;
  const PasswordChanged({required this.password});

  @override
  List<Object> get props => [password];
}

class EmailChanged extends LoginEvent {
  final String email;
  const EmailChanged({required this.email});

  @override
  List<Object> get props => [email];
}

class EmailUnfocused extends LoginEvent {
  const EmailUnfocused();
}

class PasswordUnfocused extends LoginEvent {
  const PasswordUnfocused();
}

class LoginButtonClicked extends LoginEvent {
  final String email;
  final String password;
  const LoginButtonClicked({required this.password, required this.email});
  @override
  List<Object> get props => [email, password];
}
