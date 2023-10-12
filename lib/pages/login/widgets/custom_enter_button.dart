import 'package:flutter/material.dart';
import 'package:krok_app/generated/l10n.dart';
class EnterButton extends StatelessWidget {
  const EnterButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: Text(
        S.of(context).start,
      ),
    );
  }
}
