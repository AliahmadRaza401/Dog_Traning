import '../../../widgets/widgets_imports.dart';

class PersonalInformation extends StatelessWidget {
  PersonalInformation({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
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
              Column(
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
                ],
              ),
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
                            const KAppBar(title: "Personal Information"),
                            heightBox(0.02),
                            CircleAvatar(
                              backgroundColor: KColors.kGrey,
                              radius: kWidth(.13),
                              backgroundImage: const AssetImage(
                                "assets/images/chat1.png",
                              ),
                            ),
                            heightBox(0.01),
                            CustomText(
                                text: "Catherine Smith",
                                textStyle: KTextStyles().normal(
                                  textColor: KColors.kTcolor,
                                  fontWeight: FontWeight.w600,
                                )),
                            CustomText(
                                text: "email@example.com",
                                textStyle: KTextStyles().normal(
                                  textColor: const Color(0xff414141),
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                      ),
                      heightBox(0.02),
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
                      heightBox(.02),
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
                          hasPrefix: false,
                          keyboardType: TextInputType.visiblePassword,
                          suffixIcon: const Icon(null),
                          prefixIcon: const Icon(null)),
                      heightBox(.02),
                      CustomText(
                        text: "Phone Number",
                        textStyle: KTextStyles().normal(
                            fontSize: 16,
                            textColor: KColors.kTcolor,
                            fontWeight: FontWeight.w400),
                      ),
                      heightBox(.005),
                      CustomTextField(
                          controller: phoneController,
                          label: "Enter Phone Number",
                          hintText: "",
                          hasPrefix: false,
                          keyboardType: TextInputType.phone,
                          suffixIcon: const Icon(null),
                          prefixIcon: const Icon(null)),
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
                          controller: addressController,
                          label: "Enter Address",
                          hintText: "",
                          hasPrefix: false,
                          keyboardType: TextInputType.visiblePassword,
                          suffixIcon: const Icon(null),
                          prefixIcon: const Icon(null)),
                      heightBox(.09),
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
      ),
    );
  }
}
