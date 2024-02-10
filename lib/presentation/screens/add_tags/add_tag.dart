part of 'add_tag_imports.dart';

@RoutePage()
class AddTags extends StatefulWidget {
  const AddTags({super.key});

  @override
  State<AddTags> createState() => _AddTagsState();
}

class _AddTagsState extends State<AddTags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorPalate.primary,
        title: "Add New Tags".text.color(Colors.white).makeCentered(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.h.heightBox,
            "Title".text.xl.make(),
            const VxTextField(
              fillColor: Colors.transparent,
              hint: "title",
              borderRadius: 10,
              borderType: VxTextFieldBorderType.roundLine,
              borderColor: ColorPalate.primary,
            ),
            18.h.heightBox,
            "Slug".text.xl.make(),
            const VxTextField(
              fillColor: Colors.transparent,
              hint: "Slug",
              // contentPaddingLeft: 10,
              borderRadius: 10,
              borderType: VxTextFieldBorderType.roundLine,
              borderColor: ColorPalate.primary,
            ),
            Spacer(),
            PrimaryButton(title: "Add", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
