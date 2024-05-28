import '../../../widgets/widgets_imports.dart';

class ConfirmPassword extends StatelessWidget {
  ConfirmPassword({Key? key}) : super(key: key);

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                  height: kHeight(.12),
                  width: kWidth(.3),
                  decoration: BoxDecoration(
                    color: KColors.kPrimary,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        kWidth(.5),
                      ),
                    ),
                  ),
                ),
                widthBox(.4),
                CircleAvatar(
                  radius: kHeight(.05),
                  backgroundColor: KColors.kPrimary,
                )
              ],
            ),
            heightBox(.01),
            Center(
              child: SizedBox(
                width: kWidth(0.9),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            alignText: TextAlign.left,
                            maxLines: 2,
                            text: "Forgot\nPassword",
                            textStyle: KTextStyles().heading(
                                textColor: KColors.kSecondary,
                                fontSize: 32,
                                fontWeight: FontWeight.w600)),
                        heightBox(.02),
                        CustomText(
                          text: "Password",
                          textStyle: KTextStyles().normal(
                              fontSize: 16,
                              textColor: KColors.kTcolor,
                              fontWeight: FontWeight.w400),
                        ),
                        heightBox(.005),
                        CustomTextField(
                            controller: passwordController,
                            label: "Enter Password",
                            hintText: "",
                            keyboardType: TextInputType.visiblePassword,
                            suffixIcon: const Icon(null),
                            hasPrefix: false,
                            prefixIcon: const Icon(null)),
                        heightBox(.015),
                        CustomText(
                          text: "Confirm Password",
                          textStyle: KTextStyles().normal(
                              fontSize: 16,
                              textColor: KColors.kTcolor,
                              fontWeight: FontWeight.w400),
                        ),
                        heightBox(.005),
                        CustomTextField(
                            controller: confirmPasswordController,
                            label: "Confirm Password",
                            hintText: "",
                            keyboardType: TextInputType.visiblePassword,
                            suffixIcon: const Icon(null),
                            hasPrefix: false,
                            prefixIcon: const Icon(null)),
                        heightBox(.02),
                        PrimaryButton(
                          height: .06,
                          width: .9,
                          text: "Save",
                          function: () {
                            Get.toNamed("");
                          },
                          borderRadius: .5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
