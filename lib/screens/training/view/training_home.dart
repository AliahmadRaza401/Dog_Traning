import '../../../widgets/widgets_imports.dart';

class TrainingHome extends StatelessWidget {
  const TrainingHome({Key? key}) : super(key: key);

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
                      Container(
                        height: kHeight(.3),
                        width: kWidth(.9),
                        decoration: BoxDecoration(
                            color: KColors.kPrimary.withOpacity(.8),
                            borderRadius: BorderRadius.circular(
                              kWidth(.02),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: kWidth(.15),
                              foregroundImage:
                                  AssetImage("assets/images/homepic.png"),
                            ),
                            heightBox(.01),
                            CustomText(
                                text: "Pet's Name",
                                textStyle: KTextStyles().normal(
                                    fontSize: 18, textColor: KColors.kWhite)),
                            CustomText(
                                text: "Training Plan - 30%",
                                textStyle: KTextStyles()
                                    .normal(textColor: KColors.kSecondary)),
                            Container(
                              height: kHeight(.03),
                              width: kWidth(.3),
                              decoration: BoxDecoration(
                                  color: KColors.kPrimary,
                                  borderRadius:
                                      BorderRadius.circular(kWidth(.02))),
                              alignment: Alignment.center,
                              child: CustomText(
                                  text: "Membership Option",
                                  textStyle: KTextStyles().small()),
                            ),
                          ],
                        ),
                      ),
                      heightBox(.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              text: "My Courses",
                              textStyle: KTextStyles().normal(
                                  textColor: KColors.kTcolor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          CustomText(
                              text: "View all",
                              textStyle: KTextStyles().normal(
                                  textColor: KColors.kSecondary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      heightBox(.01),
                      SizedBox(
                        height: kHeight(.15),
                        width: context.width,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return CoursesBox(title: "Course 1");
                            },
                            separatorBuilder: (context, index) => widthBox(.02),
                            itemCount: 6),
                      ),
                      heightBox(.02),
                      CustomText(
                          text: "This Week Training",
                          textStyle: KTextStyles().normal(
                              textColor: KColors.kTcolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      heightBox(.01),
                      CustomText(
                          text: "workshop 1",
                          textStyle: KTextStyles().normal(
                              textColor: KColors.kTcolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      heightBox(.01),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(kWidth(.02)),
                            child: Image.asset(
                              "assets/images/home.png",
                              fit: BoxFit.fill,
                              height: kHeight(.08),
                              width: kWidth(.2),
                            ),
                          ),
                          widthBox(.02),
                          CustomText(
                              text: "How to crate Train",
                              textStyle: KTextStyles().heading(
                                  textColor: KColors.kTcolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      heightBox(.02),
                      CustomText(
                          text: "Workshop 2",
                          textStyle: KTextStyles().normal(
                              textColor: KColors.kTcolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      heightBox(.01),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(kWidth(.02)),
                            child: Image.asset(
                              "assets/images/home.png",
                              fit: BoxFit.fill,
                              height: kHeight(.08),
                              width: kWidth(.2),
                            ),
                          ),
                          widthBox(.02),
                          CustomText(
                              text: "How to crate Train",
                              textStyle: KTextStyles().heading(
                                  textColor: KColors.kTcolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      heightBox(.02),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/dog1.png",
                          height: kHeight(.2),
                          fit: BoxFit.fill,
                        ),
                      ),
                      heightBox(.04),
                      IconTextButton(
                        bordercolor: KColors.kSecondary,
                        color: KColors.noColor,
                        width: .9,
                        text: "Book a Private Session",
                        img: "assets/icons/calendar.png",
                        function: () {
                          Get.toNamed("/courseequipment");
                        },
                      ),
                      heightBox(.1),
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

class CoursesBox extends StatelessWidget {
  final String title;
  const CoursesBox({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/trainingcourses");
      },
      child: SizedBox(
        height: kHeight(.15),
        width: kWidth(.35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(kWidth(.02)),
              child: Image.asset(
                "assets/images/home.png",
                fit: BoxFit.fill,
                height: kHeight(.1),
                width: kWidth(.35),
              ),
            ),
            heightBox(.005),
            CustomText(
                text: title,
                textStyle: KTextStyles()
                    .normal(fontSize: 14, fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
