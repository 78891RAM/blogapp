part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashScreenRoute.page, initial: true),
        AutoRoute(page: OnboardScreenRoute.page),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: BottomNavBarRoute.page),
        AutoRoute(page: AddCategoryRoute.page),
        AutoRoute(page: ProfileDetailsRoute.page)
      ];
}
