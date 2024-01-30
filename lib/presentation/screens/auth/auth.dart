part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.assetsImagesLoginBack),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.assetsImagesLogoo,
                  height: 42.h,
                  width: 139.h,
                ).centered(),
                const Spacer(),
                "Explore the world, \nBillions of Thoughts."
                    .text
                    .minFontSize(28)
                    .align(TextAlign.start)
                    .fontWeight(FontWeight.w700)
                    .color(Colors.white)
                    .make(),
                44.h.heightBox,
                PrimaryButton(
                  title: "Login",
                  onPressed: () {
                    AutoRouter.of(context).push(const LoginRoute());
                  },
                ),
                12.h.heightBox,
                customButton(
                  title: "Register",
                  onPressed: () {
                    AutoRouter.of(context).push(const RegisterRoute());
                  },
                ),
                40.h.heightBox
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class primaryButton extends StatelessWidget {
//   const primaryButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//           minimumSize:
//               Size(MediaQuery.of(context).size.width, 44.h),
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(11.r)),
//           backgroundColor: ColorPalate.primary),
//       onPressed: () {
//         AutoRouter.of(context).push(const LoginRoute());
//       },
//       child: "Login"
//           .text
//           .color(Colors.white)
//           .size(16.sp)
//           .fontWeight(FontWeight.w700)
//           .make(),
//     );
//   }
// }
