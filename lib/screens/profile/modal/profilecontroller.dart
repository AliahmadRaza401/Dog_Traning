import 'package:dog_training/widgets/widgets_imports.dart';

class ProfileController extends GetxController {
  List profileTileContent = [
    {
      "icon": Icons.person,
      "title": "Personal Information",
    },
    {
      "icon": Icons.lock_outline,
      "title": "Change Password",
    },
    {
      "icon": Icons.history,
      "title": "Order History",
    },
    {
      "icon": Icons.payment_outlined,
      "title": "Payment Cards",
    },
  ];
}
