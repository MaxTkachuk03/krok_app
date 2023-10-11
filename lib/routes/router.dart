import 'package:auto_route/auto_route.dart';
import 'package:krok_app/pages/pages.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: '/'),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: AchievesRoute.page),
  ];
}
