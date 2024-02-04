part of 'blog_category_imports.dart';

@RoutePage()
class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorPalate.primary,
        title: "Categories".text.color(Colors.white).makeCentered(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 30.h,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return 12.h.heightBox;
        },
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: ListTile(
              leading: "${index + 1}".text.make(),
              title:
                  "Enter".text.size(14.sp).fontWeight(FontWeight.w500).make(),
              trailing: SizedBox(
                width: 100.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        size: 20,
                        color: ColorPalate.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
