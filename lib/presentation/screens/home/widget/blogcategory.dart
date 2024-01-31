// import 'package:flutter/material.dart';

// class ResponsiveListView extends StatelessWidget {
//   final int selectedIndex;

//   const ResponsiveListView({super.key, required this.selectedIndex});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       width: MediaQuery.of(context).size.width * 0.8, // 80% of the screen width
//       height:
//           MediaQuery.of(context).size.height * 0.6, // 60% of the screen height
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//       child: ListView.builder(
//         scrollDirection: Axis.vertical,
//         itemCount: 10, // Replace with your desired number of items
//         itemBuilder: (BuildContext context, int index) {
//           return GestureDetector(
//             onTap: () {
//               // Handle tap if needed
//             },
//             child: Container(
//               height: 50.0, // Adjust the height of each item as needed
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color:
//                     index == selectedIndex ? Colors.blue : Colors.transparent,
//                 borderRadius: BorderRadius.circular(8.0),
//                 border: Border.all(color: Colors.blue),
//               ),
//               child: Text(
//                 'Item $index',
//                 style: TextStyle(
//                   color: index == selectedIndex ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:blogapp/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlogCategory extends StatelessWidget {
  final int selectedIndex;
  final List<String> blogCategories;

  const BlogCategory(
      {super.key, required this.selectedIndex, required this.blogCategories});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width * 5, // 80% of the screen width
      height: 40.h, // 60% of the screen height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: blogCategories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Handle tap if needed
            },
            child: Container(
              height: 50.0.h,
              width: 110.w, // Adjust the height of each item as needed
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              // padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: index == selectedIndex
                    ? ColorPalate.primary
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(14.0.r),
                border: Border.all(color: Colors.black12),
              ),
              child: Text(
                blogCategories[index],
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: index == selectedIndex
                      ? Colors.white
                      : ColorPalate.primary,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: BlogCategory(selectedIndex: 0, blogCategories: [
//       "Machine",
//       "Nature",
//       "Cosmos",
//       "Physics",
//       "Chemistry",
//       "Nature",
//       "Cosmos",
//       "Chemistry",
//     ]),
//   ));
// }
