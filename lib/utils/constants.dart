import '../widgets/widgets_imports.dart';

/// App Constants

String appVersion = "0.0.0";

/// GetX Constants

var obscureText = true.obs;
var obscureTextCP = true.obs;
var defaultObscureText = false.obs;

/// API Constants

const Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

class KAppBar extends StatelessWidget {
  final String title;
  const KAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: kWidth(.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_rounded,
                color: KColors.kSecondary,
              ),
            ),
            CustomText(
                text: title,
                textStyle: KTextStyles().heading(
                    textColor: KColors.kSecondary,
                    fontSize: 22,
                    fontWeight: FontWeight.w600)),
            const Icon(null),
          ],
        ),
      ),
    );
  }
}
