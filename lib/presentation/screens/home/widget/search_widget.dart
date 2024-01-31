import 'package:blogapp/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const CustomSearchBar({
    super.key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0.h, // Adjust the height as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0.r),
        border: Border.all(
            color: const Color.fromARGB(
                255, 214, 210, 210)), // Specify your border color
      ),
      child: TextField(
        controller: controller,
        cursorColor: ColorPalate.primary,
        focusNode: focusNode,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: 'Search...',
          contentPadding: const EdgeInsets.symmetric(horizontal: 2),
          prefixIcon: Icon(
            Icons.search,
            color: ColorPalate.primary,
            size: 30.h,
            weight: 50,
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(
            color:
                Colors.black), // Set text color to black or your desired color
      ),
    );
  }
}
