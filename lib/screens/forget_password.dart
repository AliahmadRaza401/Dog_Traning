import '../../../widgets/widgets_imports.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();

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
                        heightBox(.015),
                        CustomText(
                          text: "Email",
                          textStyle: KTextStyles().normal(
                              fontSize: 16,
                              textColor: KColors.kTcolor,
                              fontWeight: FontWeight.w400),
                        ),
                        heightBox(.005),
                        CustomTextField(
                            controller: emailController,
                            label: "Enter Email Address",
                            hintText: "",
                            keyboardType: TextInputType.emailAddress,
                            suffixIcon: const Icon(null),
                            hasPrefix: false,
                            prefixIcon: const Icon(null)),
                        heightBox(.015),
                        heightBox(.02),
                        PrimaryButton(
                          height: .06,
                          width: .9,
                          text: "Verfy Email",
                          function: () {
                            Get.toNamed("/confirmpassword");
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
