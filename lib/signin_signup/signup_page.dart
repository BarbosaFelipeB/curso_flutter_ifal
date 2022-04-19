import 'package:curso_ifal_flutter/signin_signup/data/datasources/google_signup_datasource.dart';
import 'package:curso_ifal_flutter/signin_signup/data/datasources/rest_signup_datasource.dart';
import 'package:curso_ifal_flutter/signin_signup/signup_controller.dart';
import 'package:curso_ifal_flutter/signin_signup/widets/basic_text_form_field_widget.dart';
import 'package:curso_ifal_flutter/signin_signup/widets/default_button_widget.dart';
import 'package:curso_ifal_flutter/signin_signup/widets/signin_signup_app_bar_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late ReactionDisposer errorDisposer;
  double leftRightPaddingValue = 20.0;
  late SignUpController controller;

  @override
  void initState() {
    super.initState();

    controller = SignUpController();
    errorDisposer =
        reaction((_) => controller.errorMessage, signUpErrorHandler);
  }

  @override
  void dispose() {
    errorDisposer();
    super.dispose();
  }

  void signUpErrorHandler(String? message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message!),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Observer(builder: (_) {
            return Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SignInSignUpAppBarWidget(),
                  _createAccountText(),
                  BasicTextFormField(
                    label: 'Nome',
                    maxLength: 50,
                    errorText: controller.nameErrorMessage,
                    onChangedCallback: controller.setName,
                  ),
                  BasicTextFormField(
                    label: 'Email',
                    maxLength: 50,
                    inputType: TextInputType.emailAddress,
                    errorText: controller.emailErrorMessage,
                    onChangedCallback: controller.setEmail,
                  ),
                  BasicTextFormField(
                    label: 'Senha',
                    maxLength: 20,
                    inputType: TextInputType.text,
                    errorText: controller.passwordErrorMessage,
                    obscureText: controller.isVisible ? false : true,
                    icon: IconButton(
                      onPressed: () {
                        controller.changeIsVisible(!controller.isVisible);
                      },
                      icon: controller.isVisible
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    onChangedCallback: controller.setPassword,
                  ),
                  Observer(
                    builder: (_) {
                      if (controller.requestSignUpObsFuture?.status ==
                          FutureStatus.pending) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return _buildSignUpButton();
                    },
                  ),
                  _buildHasAccountMessage(),
                  const SizedBox(height: 30),
                  _buildContinueMessage(),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: _buildSocialNetworksButtons(
                            'assets/images/google.png', 'Google', () async {
                          controller
                              .setSignUpStrategy(GoogleSignUpDatasource());
                          controller.googleSignUp();
                        }),
                      ),
                      Expanded(
                        child: _buildSocialNetworksButtons(
                            'assets/images/facebook.png', 'Facebook', () {}),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildSignUpButton() {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 20, left: 13, right: 13),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.10,
        child: DefaultButton(
            color: Theme.of(context).primaryColor,
            widget: const Text(
              'Criar conta',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            callback: controller.isFormValid
                ? () async {
                    controller.setSignUpStrategy(RestSignUpDatasource(Dio()));
                    await controller.signUp();
                  }
                : null),
      ),
    );
  }

  Row _buildHasAccountMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Já possui uma conta?'),
        TextButton(onPressed: () {}, child: Text('Login'))
      ],
    );
  }

  Widget _buildContinueMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Divider(
            height: 10,
            color: Colors.black,
          ),
        ),
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 5.0,
            ),
            child: Text('Ou continuar com'),
          ),
        ),
        Flexible(
          flex: 1,
          child: Divider(
            height: 10,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _createAccountText() {
    return Padding(
      padding: EdgeInsets.only(
          top: 45,
          bottom: 15,
          left: leftRightPaddingValue,
          right: leftRightPaddingValue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getText('Criar'),
          _getText('Conta'),
        ],
      ),
    );
  }

  Widget _getText(String content) => Text(
        content,
        style: const TextStyle(fontSize: 45),
      );

  Widget _buildSocialNetworksButtons(
      String logoPath, String socialName, void Function() callback) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: DefaultButton.socialNetworks(
        callback: callback,
        widget: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 1,
                child: Image.asset(
                  logoPath,
                  width: 20,
                  height: 20,
                ),
              ),
              Flexible(
                flex: 2,
                child: Text(
                    socialName,
                    style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
