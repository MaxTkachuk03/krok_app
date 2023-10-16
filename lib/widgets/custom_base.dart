import 'package:flutter/material.dart';
import 'package:krok_app/generated/l10n.dart';

class CustomBase extends StatelessWidget {
  const CustomBase({
    super.key,
    required this.child,
    this.leading,
  });

  final Widget child;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        centerTitle: true,
        title: Text(
          S.of(context).krokapp,
        ),
        leading: leading,
      ),
      body: Center(
        child: child,
      ),
    );
  }
}
