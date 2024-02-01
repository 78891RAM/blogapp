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
            children: [
              40.h.heightBox,
              CardProfile(
                text: 'Profile',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.person,
                backgroundColor: const Color.fromARGB(255, 141, 145, 202),
                onPressed: () {},
              ),
              const Divider(
                color: Color.fromARGB(255, 225, 224, 224),
              ),
              // 10.h.heightBox,
              CardProfile(
                text: 'Settings',
                borderRadius: BorderRadius.circular(50.0),
                backgroundColor: const Color(0xff2EAA9B),
                icon: Icons.settings_applications,
                onPressed: () {},
              ),
              10.h.heightBox,
              CardProfile(
                text: 'Categories',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.category,
                backgroundColor: const Color.fromARGB(255, 97, 101, 97),
                onPressed: () {},
              ),
              20.h.heightBox,
              CardProfile(
                text: 'Location',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.location_on,
                backgroundColor: const Color.fromARGB(255, 15, 225, 183),
                onPressed: () {},
              ),
              20.h.heightBox,
              CardProfile(
                text: 'Wishlists',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.favorite,
                backgroundColor: Color.fromARGB(255, 190, 47, 81),
                onPressed: () {},
              ),
              20.h.heightBox,
              CardProfile(
                text: 'Saved',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.bookmark,
                backgroundColor: const Color.fromARGB(255, 60, 60, 58),
                // onPressed: () => authBloc.add(LogOutEvent()),
                onPressed: () {},
              ),
              20.h.heightBox,
              CardProfile(
                text: 'Hisory',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.history,
                backgroundColor: const Color.fromARGB(255, 48, 152, 77),
                // onPressed: () => authBloc.add(LogOutEvent()),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => GoogleMapScreen()),
                  // );
                },
              ),
              20.h.heightBox,
              CardProfile(
                text: 'Location',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.location_on,
                backgroundColor: const Color.fromARGB(255, 15, 225, 183),
                // onPressed: () => authBloc.add(LogOutEvent()),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => GoogleMapScreen()),
                  // );
                },
              ),
              20.h.heightBox,
              CardProfile(
                text: 'Log Out',
                borderRadius: BorderRadius.circular(50.0),
                icon: Icons.logout,
                backgroundColor: ColorPalate.primary,
                // onPressed: () => authBloc.add(LogOutEvent()),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => GoogleMapScreen()),
                  // );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
