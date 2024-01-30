part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                      "Sign up"
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
                        prefixIcon: Icon(
                          Icons.email,
                          color: ColorPalate.primary,
                        ),
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
                        prefixIcon: Icon(
                          Icons.lock,
                          color: ColorPalate.primary,
                        ),
                      ),
                      24.h.heightBox,
                      "Confirm Password"
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
                        prefixIcon: Icon(
                          Icons.lock,
                          color: ColorPalate.primary,
                        ),
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                        ],
                      ),
                      48.h.heightBox,
                      PrimaryButton(
                        title: "Sign up",
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
                              text: " ?Login",
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
