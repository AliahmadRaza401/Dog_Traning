import '../screens/pet_shop/pet_shop.dart';
import '../widgets/widgets_imports.dart';

dynamic routes = [
  GetPage(name: '/', page: () => Login()),
  GetPage(name: '/createaccount', page: () => CreateAccount()),
  GetPage(name: '/forgetpassword', page: () => ForgetPassword()),
  GetPage(name: '/confirmpassword', page: () => ConfirmPassword()),
  GetPage(name: '/homeScreen', page: () => HomeScreen()),
  GetPage(name: '/milestone', page: () => const Milestone()),
  GetPage(name: '/store', page: () => Store()),
  GetPage(name: '/session', page: () => const Sessions()),
  GetPage(name: '/chat', page: () => const Chat()),
  GetPage(name: '/profile', page: () => Profile()),
  GetPage(name: '/personalinformation', page: () => PersonalInformation()),
  GetPage(name: '/petinformation', page: () => PetInformation()),
  GetPage(name: '/changepassword', page: () => ChangePassword()),
  GetPage(name: '/groomingservice', page: () => GroomingService()),
  GetPage(name: '/petshop', page: () => const PetShop()),
  GetPage(name: '/traininghome', page: () => TrainingHome()),
  GetPage(name: '/trainingcourses', page: () => TrainingCourses()),
  GetPage(name: '/courseequipment', page: () => CourseEquipment()),
  GetPage(name: '/bottom', page: () => BottomNavBar()),
];
