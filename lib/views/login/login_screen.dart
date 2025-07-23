import 'package:bloc_clean_coding/bloc/login/login_bloc.dart';
import 'package:bloc_clean_coding/config/Routes/route_names.dart';
import 'package:bloc_clean_coding/main.dart';
import 'package:bloc_clean_coding/repository/auth/login_repository.dart';
import 'package:bloc_clean_coding/utils/enums.dart';
import 'package:bloc_clean_coding/utils/flush_bar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  late LoginBloc loginBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginBloc = LoginBloc(loginRepository: getIt());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
        ),
        body: BlocProvider(
          create: (context) => loginBloc,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: BlocListener<LoginBloc, LoginState>(
              listenWhen: (previous, current) =>
                  previous.postApiStatus != current.postApiStatus,
              listener: (context, state) {
                if (state.postApiStatus == PostApiStatus.loading) {
                  FlushBarHelper.showFlushBarErrorMessage(
                      message: "Subitting", context: context, state: state);
                } else if (state.postApiStatus == PostApiStatus.success) {
                  Navigator.pushNamed(context, RouteNames.homeScreen);
                } else if (state.postApiStatus == PostApiStatus.error) {
                  FlushBarHelper.showFlushBarErrorMessage(
                      message: state.message, context: context, state: state);
                }
              },
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InputEmailwidget(
                          emailFocus: _emailFocus,
                          emailController: _emailController),
                      SizedBox(
                        height: 20,
                      ),
                      InputPasswordWidget(
                          passwordFocus: _passwordFocus,
                          passwordController: _passwordController),
                      SizedBox(
                        height: 20,
                      ),
                      LoginButton(
                        formKey: _formKey,
                        email: _emailController.text,
                        password: _passwordController.text,
                      )
                    ],
                  )),
            ),
          ),
        ));
  }
}
