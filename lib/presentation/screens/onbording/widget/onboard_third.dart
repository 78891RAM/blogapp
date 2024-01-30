part of 'widget_import.dart';

class onBoardThird extends StatelessWidget {
  const onBoardThird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.assetsImagesOnboard3,
          height: 333.h,
          width: 333.h,
        ),
        41.h.heightBox,
        "Explore a wide selection of categories, or use the search bar to find specific topics"
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
