part of 'splash_imports.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    moveToOnboardScreen();

    super.initState();
  }

  moveToOnboardScreen() async {
    Future.delayed(const Duration(seconds: 2), () {
      AutoRouter.of(context).push(const OnboardScreenRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.primary,
      body: Center(
          child: FadedScaleAnimation(
        child: Image.asset(
          Assets.assetsImagesLogoo,
          height: 42,
          width: 139,
        ),
      )),
    );
  }
}
