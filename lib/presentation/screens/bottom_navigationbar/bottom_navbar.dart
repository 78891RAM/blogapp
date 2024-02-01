part of 'bottom_navbar_imports.dart';

@RoutePage()
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int visit = 0;
  List<TabItem> items = [
    const TabItem(
      icon: Icons.home,
    ),
    const TabItem(
      icon: Icons.category,
    ),
    const TabItem(
      icon: Icons.add,
    ),
    const TabItem(
      icon: Icons.tag,
    ),
    const TabItem(
      icon: Icons.person,
    ),
  ];

  List<Widget> pages = [
    const Home(),
    const AddCategory(),
    const AddPosts(),
    const Tags(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: Colors.white,
        color: Colors.black.withOpacity(0.21),
        colorSelected: ColorPalate.primary,
        indexSelected: visit,
        highlightStyle: const HighlightStyle(
          isHexagon: false,
        ),
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
