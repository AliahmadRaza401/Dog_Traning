import 'package:dog_training/widgets/widgets_imports.dart';

class ProfileController extends GetxController {
  List profileTileContent = [
    {
      "icon": Icons.person,
      "title": "Personal Information",
      "func": () {
        Get.toNamed("/personalinformation");
      }
    },
    {
      "icon": Icons.lock_outline,
      "title": "Change Password",
      "func": () {
        Get.toNamed("/changepassword");
      }
    },
    {
      "icon": Icons.history,
      "title": "Pet Information",
      "func": () {
        Get.toNamed("/petinformation");
      }
    },
    // {
    //   "icon": Icons.payment_outlined,
    //   "title": "Payment Cards",
    // },
  ];
}
