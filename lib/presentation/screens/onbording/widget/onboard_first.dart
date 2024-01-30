part of 'widget_import.dart';

class onBoardfirst extends StatelessWidget {
  const onBoardfirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onbord1.png",
          height: 333.h,
          width: 333.w,
        ),
        40.h.heightBox,
        "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community"
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
