import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krok_app/generated/l10n.dart';
import 'package:krok_app/repository/repository.dart';
import 'package:krok_app/widgets/widgets.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _status = 'walking';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomBase(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(
            flex: 2,
          ),
          Text(
            "7546",
            style: TextStyle(fontSize: 60),
          ),
          Text(
            S.of(context).totalStepsToday,
          ),
          const Spacer(),
          Text(
            _status,
            style: _status == 'walking' || _status == 'stopped'
                ? TextStyle(fontSize: 30, color: theme.primaryColorLight)
                : TextStyle(fontSize: 20, color: theme.colorScheme.background),
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
