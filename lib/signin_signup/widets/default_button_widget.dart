// import 'package:curso_ifal_flutter/signin_signup/signup_controller.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Widget widget;
  final Color color;
  final void Function()? callback;

  const DefaultButton({
    Key? key,
    required this.color,
    required this.widget,
    this.callback,
  }) : super(key: key);

  const DefaultButton.socialNetworks({
    Key? key,
    this.color = Colors.white,
    required this.widget,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: widget,
    );
  }
}
