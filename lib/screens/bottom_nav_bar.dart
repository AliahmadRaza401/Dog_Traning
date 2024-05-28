import '../widgets/widgets_imports.dart';

class BottomNavBar extends StatelessWidget {
  final BottomNavController bottomNavController =
      Get.put(BottomNavController());

  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (bottomNavController.selectedIndex.value) {
          case 0:
            return HomeScreen();
          case 1:
            return TrainingHome();
          case 2:
            return const Chat();
          case 3:
            return Profile();
          case 4:
            return Store();
          default:
            return HomeScreen();
        }
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: KColors.kPrimary,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: bottomNavController.selectedIndex.value == 0
                    ? Image.asset(
                        "assets/icons/1.png",
                        height: kHeight(0.035),
                      )
                    : Opacity(
                        opacity: .3,
                        child: Image.asset(
                          "assets/icons/1.png",
                          height: kHeight(0.035),
                        ),
                      ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: bottomNavController.selectedIndex.value == 1
                    ? Image.asset(
                        "assets/icons/2.png",
                        height: kHeight(0.035),
                      )
                    : Opacity(
                        opacity: .3,
                        child: Image.asset(
                          "assets/icons/2.png",
                          height: kHeight(0.035),
                        ),
                      ),
                label: 'Training',
              ),
              BottomNavigationBarItem(
                icon: bottomNavController.selectedIndex.value == 2
                    ? Image.asset(
                        "assets/icons/3.png",
                        height: kHeight(0.035),
                      )
                    : Opacity(
                        opacity: .3,
                        child: Image.asset(
                          "assets/icons/3.png",
                          height: kHeight(0.035),
                        ),
                      ),
                label: 'Huddle',
              ),
              BottomNavigationBarItem(
                icon: bottomNavController.selectedIndex.value == 3
                    ? Image.asset(
                        "assets/icons/4.png",
                        height: kHeight(0.035),
                      )
                    : Opacity(
                        opacity: .3,
                        child: Image.asset(
                          "assets/icons/4.png",
                          height: kHeight(0.035),
                        ),
                      ),
                label: 'Neighbourhood',
              ),
              BottomNavigationBarItem(
                icon: bottomNavController.selectedIndex.value == 4
                    ? Image.asset(
                        "assets/icons/5.png",
                        height: kHeight(0.035),
                      )
                    : Opacity(
                        opacity: .3,
                        child: Image.asset(
                          "assets/icons/5.png",
                          height: kHeight(0.035),
                        ),
                      ),
                label: 'Shop',
              ),
            ],
            currentIndex: bottomNavController.selectedIndex.value,
            onTap: (index) {
              bottomNavController.changeIndex(index);
            },
            fixedColor: KColors.kSecondary,
            selectedLabelStyle:
                const TextStyle(fontSize: 12, color: KColors.kSecondary),
            unselectedLabelStyle:
                const TextStyle(fontSize: 12, color: KColors.kSecondary),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
          )),
    );
  }
}

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
