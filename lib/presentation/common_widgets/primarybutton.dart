// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'custom_button_imports.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.r)),
          backgroundColor: ColorPalate.primary),
      onPressed: onPressed,
      child: title.text
          .color(Colors.white)
          .size(16.sp)
          .fontWeight(FontWeight.w700)
          .make(),
    );
  }
}
