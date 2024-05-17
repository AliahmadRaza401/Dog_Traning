import '../widgets/widgets_imports.dart';

dynamic routes = [
  GetPage(name: '/', page: () => Login()),
  GetPage(name: '/createaccount', page: () => CreateAccount()),
  GetPage(name: '/homeScreen', page: () => const HomeScreen()),
  GetPage(name: '/store', page: () => const Store()),
  GetPage(name: '/session', page: () => const Sessions()),
  GetPage(name: '/chat', page: () => const Chat()),
  GetPage(name: '/profile', page: () => Profile()),
  GetPage(name: '/bottom', page: () => BottomNavBar()),
];
