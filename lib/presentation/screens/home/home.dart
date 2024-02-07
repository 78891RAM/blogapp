part of 'home_imports.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeViewModel homeViewModel;
  @override
  void initState() {
    homeViewModel = HomeViewModel(repository: context.read<Repository>());
    homeViewModel.fetchAllPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const int index = 1;
    final List<String> blogcategory = [
      "Machine",
      "Nature",
      "Cosmos",
      "physics",
      "Chemistry",
      "Nature",
      "Cosmos",
      "Chemistry",
    ];

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/logoo.png",
              color: ColorPalate.primary,
              height: 42.h,
              width: 139.w,
            ),
            CircleAvatar(
              radius: 20.r,
              backgroundColor: ColorPalate.primary,
              child: CircleAvatar(
                radius: 18.r,
                backgroundImage:
                    Image.asset(Assets.assetsImagesLoginBack).image,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              10.h.heightBox,
              const CustomSearchBar(),
              30.h.heightBox,
              BlogCategory(selectedIndex: index, blogCategories: blogcategory),
              16.h.heightBox,
              GridView.builder(
                shrinkWrap: true,
                itemCount: 100,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 20.h,
                  mainAxisExtent: 220,
                  childAspectRatio: 2,
                ),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 240, 237, 237)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            Assets.assetsImagesHome,
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          height: 60.h, // Adjust the height as needed
                          child: Text(
                            "Space Falcon Announces Strategic Partnership with AV Star Capital.",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 11.sp,
                              color: ColorPalate.primary,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "23 May 2024",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 9.sp,
                                  color: const Color(0xFF7F7F7F),
                                ),
                              ),
                              Text(
                                "4 Min read",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 9.sp,
                                  color: const Color(0xFF7F7F7F),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
