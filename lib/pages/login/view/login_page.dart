import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krok_app/generated/l10n.dart';
import 'package:krok_app/pages/pages.dart';
import 'package:krok_app/routes/router.dart';
import 'package:krok_app/widgets/widgets.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return CustomBase(
        onPressed: () {  },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 4,),
              TextFormField(
                controller: _nameController,
                validator: (val) =>
                    val!.isEmpty ? S.of(context).enterYourName : null,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: S.of(context).enterYourName,
                ),
              ),
              const Spacer(),
              TextFormField(
                controller: _phoneController,
                validator: (val) =>
                    val!.isEmpty ? S.of(context).enterYourPhoneNumber : null,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: S.of(context).enterYourPhoneNumber,
                ),
              ),
              const Spacer(),
              EnterButton(onPressed: () {
                AutoRouter.of(context).push(const HomeRoute());
              }),
              const Spacer(flex: 4,),
            ],
          ),
        ),
    );
  }
}