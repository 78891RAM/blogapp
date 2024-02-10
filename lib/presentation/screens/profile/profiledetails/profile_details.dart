part of 'profile_details_import.dart';

@RoutePage()
class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  late ProfileViewModel profileViewModel;

  @override
  void initState() {
    profileViewModel = ProfileViewModel(repository: context.read<Repository>());
    profileViewModel.getUserPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorPalate.primary,
      appBar: AppBar(
        backgroundColor: ColorPalate.primary,
        automaticallyImplyLeading: false,
        forceMaterialTransparency: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body:
          BlocBuilder<VelocityBloc<ProfileModel>, VelocityState<ProfileModel>>(
        bloc: profileViewModel.getUserPostBloc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is VelocityUpdateState) {
            return ListView(
              children: [
                Container(
                  height: 500.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: ColorPalate.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 80.r,
                          backgroundImage:
                              // const AssetImage(Assets.assetsImagesPicture),
                              NetworkImage(
                            state.data.userDetails!.profilePhotoUrl.toString(),
                          )),
                      10.h.heightBox,
                      state.data.userDetails!.name!.text.bold.xl
                          .color(Colors.white)
                          .make(),
                      5.h.heightBox,
                      state.data.userDetails!.email!.text.normal
                          .color(Colors.white)
                          .make(),
                      20.h.heightBox,
                      state.data.userDetails!.about!.text
                          .size(14.sp)
                          .center
                          .color(Colors.white)
                          .makeCentered()
                          .pSymmetric(h: 20),
                      30.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              state.data.postsCount!.text.xl2
                                  .color(Colors.white)
                                  .make(),
                              "Posts".text.xl.color(Colors.white).make(),
                            ],
                          ),
                          Column(
                            children: [
                              "20".text.xl2.color(Colors.white).make(),
                              "Following".text.xl.color(Colors.white).make(),
                            ],
                          ),
                          Column(
                            children: [
                              "30".text.xl2.color(Colors.white).make(),
                              "Followers".text.xl.color(Colors.white).make(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                10.h.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "My posts".text.xl2.color(Colors.black).make(),
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: state.data.posts!.length,
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
                    var userPosts = state.data.posts![index];
                    var imagePath = userPosts.featuredimage
                        .toString()
                        .prepend("https://techblog.codersangam.com/")
                        .replaceAll("public", "storage");
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
                            child: CachedNetworkImage(
                              imageUrl: imagePath,
                              height: 120.h,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            // child: Image.asset(
                            //   Assets.assetsImagesHome,
                            //   height: 120.h,
                            //   width: double.infinity,
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            userPosts.title!,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                              color: ColorPalate.primary,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.visible,
                          ),
                          // SizedBox(height: 8.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert))
                                // Text(
                                //   "23 May 2024",
                                //   style: TextStyle(
                                //     fontWeight: FontWeight.w600,
                                //     fontSize: 9.sp,
                                //     color: const Color(0xFF7F7F7F),
                                //   ),
                                // ),
                                // Text(
                                //   "4 Min read",
                                //   style: TextStyle(
                                //     fontWeight: FontWeight.w600,
                                //     fontSize: 9.sp,
                                //     color: const Color(0xFF7F7F7F),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
