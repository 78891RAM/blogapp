// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'custom_button_imports.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool? isLoading;
  const PrimaryButton(
      {Key? key, required this.title, required this.onPressed, this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.r)),
          backgroundColor: ColorPalate.primary),
      onPressed: onPressed,
      child: isLoading == true
          ? const CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeAlign: BorderSide.strokeAlignCenter,
              strokeWidth: 6,
            )
          : title.text
              .color(Colors.white)
              .size(16.sp)
              .fontWeight(FontWeight.w700)
              .make(),
    );
  }
}
