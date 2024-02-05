part of 'tags_imports.dart';

@RoutePage()
class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late TagsViewModel tagsViewModel;

  @override
  void initState() {
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchAllTags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorPalate.primary,
        title: "Tags".text.color(Colors.white).makeCentered(),
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
      body: BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
        bloc: tagsViewModel.tagsModelBloc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is VelocityUpdateState) {
            return ListView.separated(
              itemCount: state.data.tags!.length,
              separatorBuilder: (BuildContext context, int index) {
                return 12.h.heightBox;
              },
              itemBuilder: (BuildContext context, int index) {
                var tagsData = state.data.tags![index];
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: "${index + 1}".text.make(),
                    title: tagsData.title!.text
                        .size(14.sp)
                        .fontWeight(FontWeight.w500)
                        .make(),
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
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
