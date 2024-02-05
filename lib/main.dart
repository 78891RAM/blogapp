import 'package:blogapp/core/theme/theme.dart';
import 'package:blogapp/data/repositories/auth_repo.dart';
import 'package:blogapp/data/repositories/repository.dart';
import 'package:blogapp/data/repositories/tags_repo.dart';
import 'package:blogapp/presentation/routes/router_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => Repository(tagsRepo: TagsRepo(), authRepo: Authrepo()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _approuter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            routerConfig: _approuter.config(),
          );
        });
  }
}
