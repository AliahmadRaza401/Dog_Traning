import '../../../widgets/widgets_imports.dart';

class PetInformation extends StatelessWidget {
  PetInformation({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());
  final petController = TextEditingController();
  final breedController = TextEditingController();
  final nameController = TextEditingController();

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            const KAppBar(title: "Pet Information"),
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
                        text: "Pet's Name",
                        textStyle: KTextStyles().normal(
                            fontSize: 16,
                            textColor: KColors.kTcolor,
                            fontWeight: FontWeight.w400),
                      ),
                      heightBox(.005),
                      CustomTextField(
                          controller: nameController,
                          label: "Enter Pet's Name",
                          hintText: "",
                          keyboardType: TextInputType.text,
                          suffixIcon: const Icon(null),
                          hasPrefix: false,
                          prefixIcon: const Icon(null)),
                      heightBox(.02),
                      CustomText(
                        text: "Birthday",
                        textStyle: KTextStyles().normal(
                            fontSize: 16,
                            textColor: KColors.kTcolor,
                            fontWeight: FontWeight.w400),
                      ),
                      heightBox(.005),
                      CustomTextField(
                          controller: petController,
                          label: "Date",
                          hintText: "",
                          hasPrefix: false,
                          keyboardType: TextInputType.phone,
                          suffixIcon: const Icon(null),
                          prefixIcon: const Icon(null)),
                      heightBox(.02),
                      CustomText(
                        text: "Dog's Breed",
                        textStyle: KTextStyles().normal(
                            fontSize: 16,
                            textColor: KColors.kTcolor,
                            fontWeight: FontWeight.w400),
                      ),
                      heightBox(.005),
                      CustomTextField(
                          controller: breedController,
                          label: "Enter Dog's Breed",
                          hintText: "",
                          hasPrefix: false,
                          keyboardType: TextInputType.text,
                          suffixIcon: const Icon(null),
                          prefixIcon: const Icon(null)),
                      heightBox(.19),
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
