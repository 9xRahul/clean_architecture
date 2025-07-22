import 'package:bloc_clean_coding/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login/login_bloc.dart';

class LoginButton extends StatelessWidget {
  final String email;
  final String password;
  const LoginButton(
      {super.key,
      required GlobalKey<FormState> formKey,
      required this.password,
      required this.email})
      : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) =>
          current.postApiStatus != previous.postApiStatus,
      builder: (context, state) {
        return ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context
                    .read<LoginBloc>()
                    .add(LoginButtonClicked(email: email, password: password));
              }
            },
            child: state.postApiStatus == PostApiStatus.loading
                ? SizedBox(
                    width: 10, height: 10, child: CircularProgressIndicator())
                : Text("Login"));
      },
    );
  }
}
