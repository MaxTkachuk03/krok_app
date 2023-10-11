import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krok_app/pages/pages.dart';
import 'package:krok_app/routes/router.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("KrOkApp",textAlign: TextAlign.center,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EnterButton(onPressed: () {
            AutoRouter.of(context).push(const HomeRoute());
          }),
        ],
      ),
    );
  }
}