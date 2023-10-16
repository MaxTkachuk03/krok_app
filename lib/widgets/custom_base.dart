import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krok_app/bloc/theme_bloc/theme_bloc.dart';
import 'package:krok_app/generated/l10n.dart';

class CustomBase extends StatelessWidget {
  const CustomBase({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<ThemeBloc, ThemeState>(
      listener: (context, state) {
        if (state.switchTheme == false) {
          context.read<ThemeBloc>().add(
                const ThemeEvent(switchTheme: true),
              );
        } else {
          context.read<ThemeBloc>().add(
                const ThemeEvent(switchTheme: false),
              );
        }
      },
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return Scaffold(
              backgroundColor: theme.scaffoldBackgroundColor,
              appBar: AppBar(
                backgroundColor: theme.colorScheme.background,
                centerTitle: true,
                title: Text(
                  S.of(context).krokapp,
                ),
                leading: IconButton(
                  color: theme.scaffoldBackgroundColor,
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      if (state.switchTheme == false) {
                        context.read<ThemeBloc>().add(
                              const ThemeEvent(switchTheme: true),
                            );
                      } else {
                        context.read<ThemeBloc>().add(
                              const ThemeEvent(switchTheme: false),
                            );
                      }
                    },
                    icon: const Icon(Icons.change_circle),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              body: Center(
                child: child,
              ));
        },
      ),
    );
  }
}
