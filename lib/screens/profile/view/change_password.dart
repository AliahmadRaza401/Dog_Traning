import '../../../widgets/widgets_imports.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());
  final petController = TextEditingController();
  final breedController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: kHeight(1),
        width: context.width,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const KAppBar(title: "Change Password"),
                          heightBox(0.02),
                          CircleAvatar(
                            backgroundColor: KColors.kPrimary,
                            radius: kWidth(.13),
                            child: Image.asset(
                              "assets/icons/lock.png",
                              height: kHeight(.08),
                            ),
                          ),
                        ],
                      ),
                    ),
                    heightBox(0.02),
                    CustomText(
                      text: "Current Passworod",
                      textStyle: KTextStyles().normal(
                          fontSize: 16,
                          textColor: KColors.kTcolor,
                          fontWeight: FontWeight.w400),
                    ),
                    heightBox(.005),
                    CustomTextField(
                        controller: nameController,
                        label: "Enter Current Password",
                        hintText: "",
                        keyboardType: TextInputType.visiblePassword,
                        suffixIcon: const Icon(null),
                        hasPrefix: false,
                        prefixIcon: const Icon(null)),
                    heightBox(.02),
                    CustomText(
                      text: "New Password",
                      textStyle: KTextStyles().normal(
                          fontSize: 16,
                          textColor: KColors.kTcolor,
                          fontWeight: FontWeight.w400),
                    ),
                    heightBox(.005),
                    CustomTextField(
                        controller: petController,
                        label: "Enter New Password",
                        hintText: "",
                        hasPrefix: false,
                        keyboardType: TextInputType.visiblePassword,
                        suffixIcon: const Icon(null),
                        prefixIcon: const Icon(null)),
                    heightBox(.02),
                    CustomText(
                      text: "Confirm Password",
                      textStyle: KTextStyles().normal(
                          fontSize: 16,
                          textColor: KColors.kTcolor,
                          fontWeight: FontWeight.w400),
                    ),
                    heightBox(.005),
                    CustomTextField(
                        controller: breedController,
                        label: "Enter New Password",
                        hintText: "",
                        hasPrefix: false,
                        keyboardType: TextInputType.text,
                        suffixIcon: const Icon(null),
                        prefixIcon: const Icon(null)),
                    heightBox(.25),
                    PrimaryButton(
                      textColor: KColors.kGrey,
                      borderRadius: .08,
                      color: KColors.kGrey.withOpacity(.5),
                      width: .9,
                      text: "Save Changes",
                      function: () {},
                    ),
                    heightBox(.02),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
