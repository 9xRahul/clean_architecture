import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login/login_bloc.dart';
import '../../../utils/validators.dart';

class InputEmailwidget extends StatelessWidget {
  const InputEmailwidget({
    super.key,
    required FocusNode emailFocus,
    required TextEditingController emailController,
  })  : _emailFocus = emailFocus,
        _emailController = emailController;

  final FocusNode _emailFocus;
  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.email != previous.email,
      builder: (context, state) {
        return TextFormField(
          focusNode: _emailFocus,
          controller: _emailController,
          validator: (value) {
            if (value!.isEmpty) {
              return "Enter Email";
            }
            if (!Validators.isValidEmail(value)) {
              return "Please enter a valid email";
            }
            return null;
          },
          onFieldSubmitted: (value) {
            context.read<LoginBloc>().add(EmailChanged(email: value));
          },
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChanged(email: value));
          },
          decoration: InputDecoration(
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        );
      },
    );
  }
}
