part of 'profile_details_import.dart';

@RoutePage()
class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorPalate.primary,
      appBar: AppBar(
        backgroundColor: ColorPalate.primary,
        automaticallyImplyLeading: false,
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
      body: ListView(
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
                  backgroundImage: const AssetImage(Assets.assetsImagesPicture),
                ),
                10.h.heightBox,
                "Ram Bhandari".text.bold.xl.color(Colors.white).make(),
                5.h.heightBox,
                "raambhandari78891@gmail.com"
                    .text
                    .normal
                    .color(Colors.white)
                    .make(),
                20.h.heightBox,
                "Ram Bhandari, Flutter mobile app developer who is Passionate about creating seamless user experiences with innovative Flutter solutions."
                    .text
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
                        "10".text.xl2.color(Colors.white).make(),
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
          "My posts".text.xl.color(Colors.black).make(),
        ],
      ),
    );
  }
}
