import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CardProfile extends StatelessWidget {
  final String? text;
  VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final IconData? icon;

  CardProfile(
      {super.key,
      this.text,
      this.onPressed,
      this.borderRadius,
      this.backgroundColor,
      this.icon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: 60.h,
      width: size.width,
      decoration:
          BoxDecoration(color: Colors.white, borderRadius: borderRadius),
      child: Card(
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(borderRadius: borderRadius!),
        elevation: 0.0,
        margin: const EdgeInsets.all(0.0),
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onPressed,
          child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      height: 35.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(12.0.r)),
                      child: Icon(
                        icon,
                        size: 25.h,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 30.0.w),
                    Text(
                      text!,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "popins"),
                    )
                    // CustomText(
                    //   text: text!,
                    //   fontSize: 18,
                    // ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
