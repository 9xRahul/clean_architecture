import 'package:bloc_clean_coding/bloc/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputPasswordWidget extends StatelessWidget {
  const InputPasswordWidget({
    super.key,
    required FocusNode passwordFocus,
    required TextEditingController passwordController,
  })  : _passwordFocus = passwordFocus,
        _passwordController = passwordController;

  final FocusNode _passwordFocus;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.password != previous.password,
      builder: (context, state) {
        return TextFormField(
          focusNode: _passwordFocus,
          controller: _passwordController,
          validator: (value) {
            if (value!.isEmpty) {
              return "Enter Password";
            } else if (_passwordController.text.length < 6) {
              return "Please enter a password greater than 6 Characters";
            }
            return null;
          },
          onFieldSubmitted: (value) {
            context.read<LoginBloc>().add(PasswordChanged(password: value));
          },
          onChanged: (value) {
            context.read<LoginBloc>().add(PasswordChanged(password: value));
          },
          decoration: InputDecoration(
              hintText: "Passwprd",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        );
      },
    );
  }
}
