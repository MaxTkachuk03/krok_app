import 'package:flutter/material.dart';

class EnterButton extends StatelessWidget {
  const EnterButton({super.key, required this.onPressed,});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(onPressed: onPressed,
    child: Text(""),);
  }
}