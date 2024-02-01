part of 'profile_imports.dart';

@RoutePage()
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.h.heightBox,
              // CircleAvatar(
              //   backgroundColor: const Color.fromARGB(255, 204, 199, 199),
              //   radius: 50.r,
              //   child: const Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         "RA",
              //         style: TextStyle(
              //             fontSize: 40,
              //             fontWeight: FontWeight.w900,
              //             color: Colors.white),
              //       ),
              //     ],
              //   ),
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 204, 199, 199),
                    radius: 50.r,
                    child: Text(
                      "RA",
                      style: TextStyle(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 10.0
                          .h), // Add some spacing between CircleAvatar and Text
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ram Bhandari",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "raambhandari78891@gmail.com",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 225, 224, 224),
              ),
              CardProfile(
                text: 'Profile',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.person,
                backgroundColor: const Color.fromARGB(255, 141, 145, 202),
                onPressed: () {
                  AutoRouter.of(context).push(
                    const ProfileDetailsRoute(),
                  );
                },
              ),
              5.h.heightBox,
              CardProfile(
                text: 'Notification',
                borderRadius: BorderRadius.circular(50.0),
                backgroundColor: const Color.fromARGB(255, 224, 2, 2),
                icon: Icons.notifications,
                onPressed: () {},
              ),

              5.h.heightBox,
              CardProfile(
                text: 'Settings',
                borderRadius: BorderRadius.circular(50.0),
                backgroundColor: const Color(0xff2EAA9B),
                icon: Icons.settings_applications,
                onPressed: () {},
              ),
              5.h.heightBox,
              CardProfile(
                text: 'Categories',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.category,
                backgroundColor: const Color.fromARGB(255, 97, 101, 97),
                onPressed: () {},
              ),
              5.h.heightBox,
              CardProfile(
                text: 'Location',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.location_on,
                backgroundColor: const Color.fromARGB(255, 15, 225, 183),
                onPressed: () {},
              ),
              5.h.heightBox,
              CardProfile(
                text: 'Wishlists',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.favorite,
                backgroundColor: const Color.fromARGB(255, 190, 47, 81),
                onPressed: () {},
              ),
              5.h.heightBox,
              CardProfile(
                text: 'Saved',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.bookmark,
                backgroundColor: const Color.fromARGB(255, 60, 60, 58),
                onPressed: () {},
              ),
              5.h.heightBox,
              CardProfile(
                text: 'Hisory',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.history,
                backgroundColor: const Color.fromARGB(255, 48, 152, 77),
                onPressed: () {},
              ),
              5.h.heightBox,

              CardProfile(
                text: 'Log Out',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.logout,
                backgroundColor: ColorPalate.primary,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
