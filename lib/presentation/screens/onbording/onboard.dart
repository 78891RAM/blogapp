part of 'onboard_import.dart';

@RoutePage()
class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardViewModel onBoardViewModel = OnBoardViewModel();
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Image.asset(
      //         "assets/images/logoo.png",
      //         color: ColorPalate.primary,
      //         height: 42.h,
      //         width: 139.w,
      //       ),
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.assetsImagesLogoo,
                  color: ColorPalate.primary,
                  height: 42.h,
                  width: 139.w,
                ),
                // 21.h.heightBox,
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: const [
                    onBoardfirst(),
                    onBoardSecond(),
                    onBoardThird()
                  ],
                ).expand(),
                50.h.heightBox,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width, 44.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.r)),
                      backgroundColor: ColorPalate.primary),
                  onPressed: () {
                    // ApiClient().getRequest(path: ApiEndpointsUrls.tags);
                    AutoRouter.of(context).push(const AuthRoute());
                  },
                  child: "Get Started"
                      .text
                      .color(Colors.white)
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .make(),
                ),
                50.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .color(ColorPalate.primary)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    SmoothPageIndicator(
                      controller: onBoardViewModel.pageController,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: const WormEffect(
                          spacing: 8.0,
                          radius: 8.0,
                          dotWidth: 12.0,
                          dotHeight: 12.0,
                          paintStyle: PaintingStyle.stroke,
                          strokeWidth: 1.5,
                          dotColor: Colors.grey,
                          activeDotColor: ColorPalate.primary),
                    ),
                    "Next"
                        .text
                        .color(ColorPalate.primary)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                  ],
                ),
                20.h.heightBox
              ],
            ),
          ),
        ),
      ),
    );
  }
}
