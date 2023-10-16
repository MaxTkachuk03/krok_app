import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:krok_app/bloc/theme_bloc/theme_bloc.dart';
import 'package:krok_app/generated/l10n.dart';
import 'package:krok_app/resources/resources.dart';
import 'package:krok_app/routes/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  final _themeBloc = ThemeBloc();

  @override
  void initState() {
    super.initState();
    _initSettings();
    _themeBloc.add(ThemeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocListener<ThemeBloc, ThemeState>(
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
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              theme: state.switchTheme == true
                  ? AppTheme.lightTheme(context)
                  : AppTheme.darkTheme(context),
              darkTheme: AppTheme.darkTheme(context),
              routerConfig: _appRouter.config(),
            );
          },
        ),
      ),
    );
  }
}

void _initSettings() {
  PhoneInputFormatter.replacePhoneMask(
    countryCode: 'UA',
    newMask: '+000 (00) 000 00 00',
  );
}
