import 'package:curso_ifal_flutter/application/pages/main_page.dart';
import 'package:curso_ifal_flutter/get-started/onboarding-screen-page.dart';
import 'package:curso_ifal_flutter/signin_signup/presentation/pages/form_based_verification_code_page.dart';
import 'package:curso_ifal_flutter/signin_signup/presentation/pages/signup_page.dart';

import 'package:curso_ifal_flutter/state_management_tests/streams_page.dart';
import 'package:curso_ifal_flutter/state_management_tests/streams_page_mobx.dart';
// import 'package:curso_ifal_flutter/tentativas/get_started/presentation/get_started_page.dart';
// import 'package:curso_ifal_flutter/tentativas/shared/layout/colors.dart';
// import 'package:curso_ifal_flutter/tentativas/sigin_signup/presentation/signinup_main_page.dart';
// import 'package:curso_ifal_flutter/tentativas/sigin_signup/presentation/signup_page.dart';
// import 'package:curso_ifal_flutter/tentativas/sigin_signup/presentation/widgets/signin_signup_app_bar_widget.dart';
// import 'package:curso_ifal_flutter/tentativas/widgets/main_page/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dentistas',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
          fontFamily: 'Euclid',
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue),
          // primarySwatch: mainMaterialColor,
          // primaryColor: mainMaterialColor),
      home:
          FormBasedVerificationCodePage(), //SignUpWidget(), //StreamPageMobx(), //MainPage() //StreamPage(), //OnBoardingPage(),
      // routes: {
      //   '/toSignUpPage': (BuildContext context) => SignUpPage(),
      // },
    );
  }
}
