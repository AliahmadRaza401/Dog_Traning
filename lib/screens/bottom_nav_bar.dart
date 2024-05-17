import '../../../widgets/widgets_imports.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  final PersistentTabController tabController =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      margin: const EdgeInsets.all(
        20,
      ),
      navBarHeight: kBottomNavigationBarHeight,
      neumorphicProperties: NeumorphicProperties(borderRadius: kWidth(.03)),
      context,
      controller: tabController,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor:
          KColors.kPrimary.withOpacity(.8), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(kWidth(.5)),
        colorBehindNavBar: KColors.noColor,
      ),
      bottomScreenMargin: 0,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200), curve: Curves.ease),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 400),
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeScreen(),
    const Sessions(),
    const Store(),
    const Chat(),
    Profile(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: ("Home"),
      activeColorPrimary: KColors.kSecondary,
      inactiveColorPrimary: KColors.kSecondary.withOpacity(.2),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.camera_sharp),
      title: ("Sessions"),
      activeColorPrimary: KColors.kSecondary,
      inactiveColorPrimary: KColors.kSecondary.withOpacity(.2),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_bag_outlined),
      title: ("Store"),
      activeColorPrimary: KColors.kSecondary,
      inactiveColorPrimary: KColors.kSecondary.withOpacity(.2),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.chat_bubble),
      title: ("Chat"),
      activeColorPrimary: KColors.kSecondary,
      inactiveColorPrimary: KColors.kSecondary.withOpacity(.2),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.person),
      title: ("Profile"),
      activeColorPrimary: KColors.kSecondary,
      inactiveColorPrimary: KColors.kSecondary.withOpacity(.2),
    ),
  ];
}
