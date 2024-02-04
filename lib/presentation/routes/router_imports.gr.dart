// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:blogapp/presentation/screens/auth/auth_imports.dart' as _i2;
import 'package:blogapp/presentation/screens/auth/login/login_imports.dart'
    as _i5;
import 'package:blogapp/presentation/screens/auth/register/register_imports.dart'
    as _i9;
import 'package:blogapp/presentation/screens/blog_category/blog_category_imports.dart'
    as _i1;
import 'package:blogapp/presentation/screens/bottom_navigationbar/bottom_navbar_imports.dart'
    as _i3;
import 'package:blogapp/presentation/screens/home/home_imports.dart' as _i4;
import 'package:blogapp/presentation/screens/onbording/onboard_import.dart'
    as _i6;
import 'package:blogapp/presentation/screens/profile/profile_imports.dart'
    as _i7;
import 'package:blogapp/presentation/screens/profile/profiledetails/profile_details_import.dart'
    as _i8;
import 'package:blogapp/presentation/screens/splash/splash_imports.dart'
    as _i10;
import 'package:blogapp/presentation/screens/tags/tags_imports.dart' as _i11;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AddCategoryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddCategory(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Auth(),
      );
    },
    BottomNavBarRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BottomNavBar(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Home(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Login(),
      );
    },
    OnboardScreenRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Profile(),
      );
    },
    ProfileDetailsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileDetails(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.Register(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashScreen(),
      );
    },
    TagsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.Tags(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddCategory]
class AddCategoryRoute extends _i12.PageRouteInfo<void> {
  const AddCategoryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AddCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCategoryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Auth]
class AuthRoute extends _i12.PageRouteInfo<void> {
  const AuthRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BottomNavBar]
class BottomNavBarRoute extends _i12.PageRouteInfo<void> {
  const BottomNavBarRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BottomNavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavBarRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Home]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Login]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardScreen]
class OnboardScreenRoute extends _i12.PageRouteInfo<void> {
  const OnboardScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnboardScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardScreenRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Profile]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileDetails]
class ProfileDetailsRoute extends _i12.PageRouteInfo<void> {
  const ProfileDetailsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.Register]
class RegisterRoute extends _i12.PageRouteInfo<void> {
  const RegisterRoute({List<_i12.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashScreen]
class SplashScreenRoute extends _i12.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.Tags]
class TagsRoute extends _i12.PageRouteInfo<void> {
  const TagsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          TagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
