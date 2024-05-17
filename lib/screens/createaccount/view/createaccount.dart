import '../../../widgets/widgets_imports.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                              text: "Create New",
                              textStyle: KTextStyles().heading(
                                  textColor: KColors.kSecondary,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600)),
                          Row(
                            children: [
                              CustomText(
                                  text: "Account",
                                  textStyle: KTextStyles().heading(
                                      textColor: KColors.kSecondary,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600)),
                              Image.asset(
                                "assets/images/dog.png",
                                height: kHeight(.06),
                                width: kWidth(0.1),
                              ),
                            ],
                          ),
                          heightBox(.02),
                          CustomText(
                            text: "Full Name",
                            textStyle: KTextStyles().normal(
                                fontSize: 16,
                                textColor: KColors.kTcolor,
                                fontWeight: FontWeight.w400),
                          ),
                          heightBox(.005),
                          CustomTextField(
                              controller: nameController,
                              label: "Enter Name",
                              hintText: "",
                              keyboardType: TextInputType.emailAddress,
                              suffixIcon: const Icon(null),
                              hasPrefix: false,
                              prefixIcon: const Icon(null)),
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
                            text: "Login",
                            function: () {
                              Get.toNamed("/createaccount");
                            },
                            borderRadius: .5,
                          ),
                          heightBox(.02),
                          const Divider(
                            thickness: 1,
                            color: Color(0xffD9D9D9),
                          ),
                          heightBox(.02),
                          IconTextButton(
                            color: KColors.kWhite,
                            borderRadius: .5,
                            height: .06,
                            width: .9,
                            text: "Login with Google",
                            img: "assets/images/G.png",
                            function: () {},
                          ),
                          heightBox(.02),
                          Align(
                            alignment: Alignment.center,
                            child: CustomRichText(
                              normalColor: KColors.kTcolor,
                              focusedColor: KColors.kSecondary,
                              normalText: "Already have an Account? ",
                              focusedText: "Login",
                              nextpage: () {
                                Get.toNamed("/");
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: kHeight(0.655)),
                        child: Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: kHeight(.02),
                            width: kWidth(.08),
                            decoration: const BoxDecoration(
                                color: KColors.kWhite,
                                shape: BoxShape.rectangle),
                            child: CustomText(
                                text: "or", textStyle: KTextStyles().normal()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
