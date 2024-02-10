// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:blogapp/presentation/screens/add_tags/add_tag_imports.dart'
    as _i2;
import 'package:blogapp/presentation/screens/auth/auth_imports.dart' as _i3;
import 'package:blogapp/presentation/screens/auth/login/login_imports.dart'
    as _i6;
import 'package:blogapp/presentation/screens/auth/register/register_imports.dart'
    as _i11;
import 'package:blogapp/presentation/screens/blog_category/blog_category_imports.dart'
    as _i1;
import 'package:blogapp/presentation/screens/bottom_navigationbar/bottom_navbar_imports.dart'
    as _i4;
import 'package:blogapp/presentation/screens/home/home_imports.dart' as _i5;
import 'package:blogapp/presentation/screens/home/home_model.dart' as _i16;
import 'package:blogapp/presentation/screens/onbording/onboard_import.dart'
    as _i7;
import 'package:blogapp/presentation/screens/posts_details/postdetails_import.dart'
    as _i8;
import 'package:blogapp/presentation/screens/profile/profile_imports.dart'
    as _i9;
import 'package:blogapp/presentation/screens/profile/profiledetails/profile_details_import.dart'
    as _i10;
import 'package:blogapp/presentation/screens/splash/splash_imports.dart'
    as _i12;
import 'package:blogapp/presentation/screens/tags/tags_imports.dart' as _i13;
import 'package:flutter/material.dart' as _i15;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AddCategoryRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddCategory(),
      );
    },
    AddTagsRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddTags(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Auth(),
      );
    },
    BottomNavBarRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BottomNavBar(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Home(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Login(),
      );
    },
    OnboardScreenRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnboardScreen(),
      );
    },
    PostsDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsDetailsRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.PostsDetails(
          key: args.key,
          post: args.post,
          imagePath: args.imagePath,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.Profile(),
      );
    },
    ProfileDetailsRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileDetails(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.Register(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SplashScreen(),
      );
    },
    TagsRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.Tags(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddCategory]
class AddCategoryRoute extends _i14.PageRouteInfo<void> {
  const AddCategoryRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AddCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCategoryRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddTags]
class AddTagsRoute extends _i14.PageRouteInfo<void> {
  const AddTagsRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AddTagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTagsRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Auth]
class AuthRoute extends _i14.PageRouteInfo<void> {
  const AuthRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BottomNavBar]
class BottomNavBarRoute extends _i14.PageRouteInfo<void> {
  const BottomNavBarRoute({List<_i14.PageRouteInfo>? children})
      : super(
          BottomNavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavBarRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Home]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Login]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OnboardScreen]
class OnboardScreenRoute extends _i14.PageRouteInfo<void> {
  const OnboardScreenRoute({List<_i14.PageRouteInfo>? children})
      : super(
          OnboardScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardScreenRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PostsDetails]
class PostsDetailsRoute extends _i14.PageRouteInfo<PostsDetailsRouteArgs> {
  PostsDetailsRoute({
    _i15.Key? key,
    required _i16.Post post,
    required String imagePath,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          PostsDetailsRoute.name,
          args: PostsDetailsRouteArgs(
            key: key,
            post: post,
            imagePath: imagePath,
          ),
          initialChildren: children,
        );

  static const String name = 'PostsDetailsRoute';

  static const _i14.PageInfo<PostsDetailsRouteArgs> page =
      _i14.PageInfo<PostsDetailsRouteArgs>(name);
}

class PostsDetailsRouteArgs {
  const PostsDetailsRouteArgs({
    this.key,
    required this.post,
    required this.imagePath,
  });

  final _i15.Key? key;

  final _i16.Post post;

  final String imagePath;

  @override
  String toString() {
    return 'PostsDetailsRouteArgs{key: $key, post: $post, imagePath: $imagePath}';
  }
}

/// generated route for
/// [_i9.Profile]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProfileDetails]
class ProfileDetailsRoute extends _i14.PageRouteInfo<void> {
  const ProfileDetailsRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.Register]
class RegisterRoute extends _i14.PageRouteInfo<void> {
  const RegisterRoute({List<_i14.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SplashScreen]
class SplashScreenRoute extends _i14.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.Tags]
class TagsRoute extends _i14.PageRouteInfo<void> {
  const TagsRoute({List<_i14.PageRouteInfo>? children})
      : super(
          TagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
