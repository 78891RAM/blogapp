part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.primary,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  Assets.assetsImagesLogoo,
                  height: 42.h,
                  width: 139.h,
                ).centered(),
                93.h.heightBox,
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        50.h.heightBox,
                        "Login"
                            .text
                            .fontWeight(FontWeight.w700)
                            .size(18)
                            .color(ColorPalate.primary)
                            .makeCentered(),
                        50.h.heightBox,
                        "Email"
                            .text
                            .fontWeight(FontWeight.w500)
                            .size(14)
                            .color(ColorPalate.primary)
                            .make(),
                        14.h.heightBox,
                        const VxTextField(
                          fillColor: Colors.transparent,
                          borderRadius: 10,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderColor: ColorPalate.primary,
                          prefixIcon: Icon(Icons.email),
                        ),
                        24.h.heightBox,
                        "Password"
                            .text
                            .fontWeight(FontWeight.w500)
                            .size(14)
                            .color(ColorPalate.primary)
                            .make(),
                        14.h.heightBox,
                        const VxTextField(
                          obscureText: false,
                          isPassword: true,
                          fillColor: Colors.transparent,
                          borderRadius: 10,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderColor: ColorPalate.primary,
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
