import 'package:dog_training/screens/home_screen/controller/home_screen_controller.dart';

import '../../../widgets/widgets_imports.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
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
                      ),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                      width: kWidth(0.9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: "Hi, Catherine",
                              textStyle: KTextStyles().heading(
                                  textColor: KColors.kSecondary,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600)),
                          Row(children: [
                            CircleAvatar(
                              radius: kHeight(.04),
                              foregroundImage:
                                  const AssetImage("assets/images/homepic.png"),
                            ),
                            widthBox(.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomText(
                                    text: "Pet's Name",
                                    textStyle: KTextStyles().heading(
                                        textColor: KColors.kTcolor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                Container(
                                  height: kHeight(.03),
                                  width: kWidth(.2),
                                  decoration: BoxDecoration(
                                      color: KColors.kPrimary.withOpacity(.4),
                                      borderRadius:
                                          BorderRadius.circular(kWidth(.02))),
                                  alignment: Alignment.center,
                                  child: CustomText(
                                      text: "Pet's Breed",
                                      textStyle: KTextStyles().small()),
                                ),
                              ],
                            )
                          ]),
                          heightBox(.02),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  homeScreenController.selectContainer.value =
                                      false;
                                },
                                child: Obx(() {
                                  return Container(
                                      decoration: BoxDecoration(
                                          border: BorderDirectional(
                                              bottom: BorderSide(
                                                  color: homeScreenController
                                                              .selectContainer
                                                              .value ==
                                                          false
                                                      ? KColors.kSecondary
                                                      : KColors.kGrey))),
                                      child: CustomText(
                                          text: "MileStone",
                                          textStyle: KTextStyles().normal(
                                              textColor: homeScreenController
                                                          .selectContainer
                                                          .value ==
                                                      false
                                                  ? KColors.kSecondary
                                                  : KColors.kGrey,
                                              fontWeight: FontWeight.w600)));
                                }),
                              ),
                              widthBox(.05),
                              GestureDetector(
                                onTap: () {
                                  homeScreenController.selectContainer.value =
                                      true;
                                },
                                child: Obx(() {
                                  return Container(
                                      decoration: BoxDecoration(
                                          border: BorderDirectional(
                                              bottom: BorderSide(
                                                  color: homeScreenController
                                                              .selectContainer
                                                              .value ==
                                                          true
                                                      ? KColors.kSecondary
                                                      : KColors.kGrey))),
                                      child: CustomText(
                                        text: "Journey",
                                        textStyle: KTextStyles().normal(
                                            textColor: homeScreenController
                                                        .selectContainer
                                                        .value ==
                                                    true
                                                ? KColors.kSecondary
                                                : KColors.kGrey,
                                            fontWeight: FontWeight.w600),
                                      ));
                                }),
                              ),
                            ],
                          ),
                          const Divider(thickness: 1, color: KColors.kGrey),
                          Obx(() {
                            return homeScreenController.selectContainer.value ==
                                    false
                                ? SizedBox(
                                    height: kHeight(1),
                                    width: kWidth(.9),
                                    child: Column(
                                      children: [
                                        const TutorialBox(),
                                        heightBox(.02),
                                        CustomText(
                                            text: "Stats",
                                            textStyle: KTextStyles().normal(
                                                textColor: KColors.kTcolor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600)),
                                        heightBox(.02),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            StatsBox(
                                                title: "# Course",
                                                subtitle: "Total Completed"),
                                            StatsBox(
                                                title: "# Course",
                                                subtitle: "Total Completed")
                                          ],
                                        ),
                                        heightBox(0.02),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            StatsBox(
                                                title: "# Course",
                                                subtitle: "Total Completed"),
                                            StatsBox(
                                                title: "# Course",
                                                subtitle: "Total Completed")
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox(
                                    height: kHeight(1),
                                    width: kWidth(.9),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomText(
                                                text: "Born on May 1st, 2024",
                                                textStyle: KTextStyles().normal(
                                                    textColor: KColors.kTcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            CustomText(
                                                text: "0-8 weeks",
                                                textStyle: KTextStyles().normal(
                                                    textColor: KColors.kTcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ],
                                        ),
                                        heightBox(.02),
                                        JourneyBox(),
                                        heightBox(.02),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomText(
                                                text: "Puppy",
                                                textStyle: KTextStyles().normal(
                                                    textColor: KColors.kTcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            CustomText(
                                                text: "2-6 weeks",
                                                textStyle: KTextStyles().normal(
                                                    textColor: KColors.kTcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ],
                                        ),
                                        heightBox(.02),
                                        JourneyBox(),
                                        heightBox(.1),
                                      ],
                                    ),
                                  );
                          }),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: kWidth(.08), top: kHeight(.09)),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    "assets/icons/setting.png",
                    height: kHeight(.04),
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

class JourneyBox extends StatelessWidget {
  const JourneyBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeight(.3),
      width: kWidth(.9),
      child: Row(
        children: [
          VerticalDivider(
            color: KColors.kPrimary.withOpacity(.5),
            thickness: 2,
          ),
          widthBox(.02),
          SizedBox(
            child: Column(
              children: [
                JourneyTile(
                    img: "assets/images/journey1.png",
                    title: "Happy Birthday, Pet Name!",
                    subtitle: "0 week old"),
                heightBox(.01),
                JourneyTile(
                    img: "assets/images/journey2.png",
                    title: "First Steps",
                    subtitle: "4 week old"),
                heightBox(.01),
                JourneyTile(
                    img: "assets/images/journey3.png",
                    title: "Almost There",
                    subtitle: "7 week old"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class JourneyTile extends StatelessWidget {
  final String img, title, subtitle;
  const JourneyTile({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeight(.085),
      width: kWidth(.8),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: title,
                  textStyle: KTextStyles().normal(
                      textColor: KColors.kTcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600)),
              Container(
                height: kHeight(.04),
                width: kWidth(.25),
                decoration: BoxDecoration(
                    color: KColors.kPrimary,
                    borderRadius: BorderRadius.circular(kWidth(.5))),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        text: subtitle, textStyle: KTextStyles().normal()),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          ClipRRect(
            child: Image.asset(
              img,
              height: kHeight(.08),
              width: kWidth(.3),
            ),
          )
        ],
      ),
    );
  }
}

class StatsBox extends StatelessWidget {
  final String title, subtitle;
  const StatsBox({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(.08),
      width: kWidth(.4),
      decoration: BoxDecoration(
          color: KColors.kPrimary,
          borderRadius: BorderRadius.circular(kWidth(.5))),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: title, textStyle: KTextStyles().normal()),
          CustomText(text: subtitle, textStyle: KTextStyles().normal())
        ],
      ),
    );
  }
}

class TutorialBox extends StatelessWidget {
  const TutorialBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/milestone");
      },
      child: Container(
        height: kHeight(.35),
        width: kWidth(.9),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              kWidth(.03),
            ),
            border: Border.all(color: const Color(0xffD9D9D9))),
        padding: EdgeInsets.all(kWidth(0.025)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: kHeight(.18),
                width: kWidth(.9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kWidth(.03))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kWidth(0.03)),
                  child: Image.asset(
                    "assets/images/home.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            heightBox(.01),
            Row(
              children: [
                PrimaryButton(
                  height: .045,
                  borderRadius: .5,
                  fontSize: 12.0,
                  width: 0.2,
                  text: "5 Levels",
                  function: () {},
                ),
                widthBox(.02),
                PrimaryButton(
                  height: .045,
                  borderRadius: .5,
                  fontSize: 12.0,
                  width: 0.3,
                  text: "2 Months/age",
                  function: () {},
                ),
              ],
            ),
            heightBox(0.01),
            CustomText(
              text: "Milestone / Journey Name",
              textStyle: KTextStyles().normal(
                  fontSize: 16,
                  textColor: KColors.kTcolor,
                  fontWeight: FontWeight.w600),
            ),
            heightBox(0.005),
            CustomText(
              alignText: TextAlign.left,
              maxLines: 2,
              text:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
              textStyle: KTextStyles().normal(
                  fontSize: 12,
                  textColor: KColors.kTcolor,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
