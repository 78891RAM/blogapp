part of 'add_posts_imports.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _ProfileState();
}

class _ProfileState extends State<AddPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalate.primary,
        automaticallyImplyLeading: false,
        title: "Add posts"
            .text
            .size(14.sp)
            .color(Colors.white)
            .fontWeight(FontWeight.w500)
            .makeCentered(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          15.h.heightBox,
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset(
                Assets.assetsImagesPicture,
              ).cornerRadius(10),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera,
                  color: ColorPalate.primary,
                ),
              ),
            ],
          ),
          20.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            hint: "title",
            borderRadius: 10,
            borderType: VxTextFieldBorderType.roundLine,
            borderColor: ColorPalate.primary,
          ),
          18.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            hint: "Slug",
            // contentPaddingLeft: 10,
            borderRadius: 10,
            borderType: VxTextFieldBorderType.roundLine,
            borderColor: ColorPalate.primary,
          ),
          15.h.heightBox,
          Container(
            height: 40.h,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 249, 248, 248),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Tags".text.make(),
                Icon(
                  Icons.chevron_right,
                  size: 30.h,
                )
              ],
            ),
          ),
          15.h.heightBox,
          Container(
            height: 40.h,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 249, 248, 248),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Categories".text.make(),
                Icon(
                  Icons.chevron_right,
                  size: 30.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
