import 'package:bloc/bloc.dart';
import 'package:bloc_clean_coding/repository/auth/login_repository.dart';
import 'package:bloc_clean_coding/utils/enums.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository;
  LoginBloc({required this.loginRepository}) : super(LoginState()) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<LoginButtonClicked>(_loginButtonClicked);
  }

  void _emailChanged(EmailChanged event, Emitter<LoginState> emit) {
    print(event.email);
    emit(state.copyWith(email: event.email));
  }

  void _passwordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    print(event.password);
    emit(state.copyWith(password: event.password));
  }

  void _loginButtonClicked(
      LoginButtonClicked event, Emitter<LoginState> emit) async {
    try {
      Map<String, dynamic> credntials = {
        "email": state.email,
        "password": state.password
      };

      emit(state.copyWith(postApiStatus: PostApiStatus.loading));

      var res = await loginRepository.loginApi(data: credntials);

      emit(state.copyWith(postApiStatus: PostApiStatus.loading));

      if (res.error.isEmpty) {
        emit(state.copyWith(
            message: "Login successfull",
            postApiStatus: PostApiStatus.success));
      } else {
        emit(state.copyWith(
            message: res.error.toString(), postApiStatus: PostApiStatus.error));
      }
    } catch (e) {
      emit(state.copyWith(
          message: e.toString(), postApiStatus: PostApiStatus.error));
    }
  }
}
