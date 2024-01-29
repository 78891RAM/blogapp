part of 'splash_imports.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.primary,
      body: Center(
          child: Image.asset(
        "assets/images/logoo.png",
        height: 42,
        width: 139,
      )),
    );
  }
}
