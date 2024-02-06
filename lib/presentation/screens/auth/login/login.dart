part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginViewModel loginViewModel;

  @override
  void initState() {
    loginViewModel = LoginViewModel(repository: context.read<Repository>());

    super.initState();
  }

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
              Form(
                key: loginViewModel.formkey,
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
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
                        VxTextField(
                          controller: loginViewModel.emailController,
                          fillColor: Colors.transparent,
                          borderRadius: 10,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderColor: ColorPalate.primary,
                          prefixIcon: const Icon(
                            Icons.email,
                            color: ColorPalate.primary,
                          ),
                          validator: (email) {
                            if (email!.isEmpty) {
                              return "Email is empty";
                            } else if (!email.isValidEmail) {
                              return "Enter the valid email";
                            }
                            return null;
                          },
                        ),
                        24.h.heightBox,
                        "Password"
                            .text
                            .fontWeight(FontWeight.w500)
                            .size(14)
                            .color(ColorPalate.primary)
                            .make(),
                        14.h.heightBox,
                        VxTextField(
                          controller: loginViewModel.passwordController,
                          obscureText: false,
                          isPassword: true,
                          fillColor: Colors.transparent,
                          borderRadius: 10,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderColor: ColorPalate.primary,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: ColorPalate.primary,
                          ),
                          validator: (password) {
                            if (password!.isEmpty) {
                              return "password is empty";
                            }
                            return null;
                          },
                        ),
                        24.h.heightBox,
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 190.w,
                              // height: 100.h,  /
                              child: CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
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
                        BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
                          bloc: loginViewModel.isLoadingBloc,
                          builder: (context, state) {
                            return PrimaryButton(
                              title: "Login",
                              isLoading: state.data,
                              onPressed: () {
                                if (loginViewModel.formkey.currentState!
                                    .validate()) {
                                  loginViewModel.loginUser(context);
                                }
                              },
                            );
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
