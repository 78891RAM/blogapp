// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'custom_button_imports.dart';

class customButton extends StatelessWidget {
  const customButton({
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
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(11.r)),
          backgroundColor: Colors.transparent),
      onPressed: onPressed,
      child: title.text
          .color(Colors.white)
          .size(16.sp)
          .fontWeight(FontWeight.w700)
          .make(),
    );
  }
}
