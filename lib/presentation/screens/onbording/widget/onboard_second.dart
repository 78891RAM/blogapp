part of 'widget_import.dart';

class onBoardSecond extends StatelessWidget {
  const onBoardSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.assetsImagesOnboard2,
          height: 333.h,
          width: 333.w,
        ),
        40.h.heightBox,
        "Customize your reading experience and join the conversation by creating an account."
            .text
            .align(TextAlign.center)
            .color(Colors.black)
            .size(15.sp)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
