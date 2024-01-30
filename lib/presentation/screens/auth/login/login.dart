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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                Assets.assetsImagesLogoo,
                height: 42.h,
                width: 139.h,
              ).centered(),
              93.h.heightBox,
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.sizeOf(context).height,
                // width: MediaQuery.sizeOf(context).width,
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
                      24.h.heightBox,
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 200.h,
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              contentPadding: EdgeInsets.zero,
                              value: false,
                              hoverColor: ColorPalate.primary,
                              title: Text(
                                "Remember me",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                    color: ColorPalate.primary),
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                          "Forgot password ? "
                              .text
                              .size(12.sp)
                              .fontWeight(FontWeight.w600)
                              .color(ColorPalate.primary)
                              .make(),
                        ],
                      ),
                      48.h.heightBox,
                      PrimaryButton(
                        title: "Login",
                        onPressed: () {
                          // AutoRouter.of(context).push(const LoginRoute());
                        },
                      ),
                      48.h.heightBox,
                      "Don’t have an account"
                          .richText
                          .size(14.sp)
                          .color(ColorPalate.primary)
                          .normal
                          .withTextSpanChildren(
                        [
                          TextSpan(
                              text: " ?Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,
                                  color: ColorPalate.primary)),
                        ],
                      ).makeCentered(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
