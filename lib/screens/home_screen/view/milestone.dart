import '../../../widgets/widgets_imports.dart';

class Milestone extends StatelessWidget {
  const Milestone({Key? key}) : super(key: key);

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
                          heightBox(.02),
                          Container(
                            height: kHeight(.2),
                            width: kWidth(.9),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kWidth(.04)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(kWidth(.04)),
                              child: Image.asset(
                                "assets/images/home.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          heightBox(.02),
                          Row(
                            children: [
                              PrimaryButton(
                                height: .045,
                                borderRadius: .5,
                                fontSize: 12.0,
                                text: "Adolescent (Name of Age)",
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
                          heightBox(.02),
                          CustomText(
                            text: "Milestone / Journey Name",
                            textStyle: KTextStyles().normal(
                                fontSize: 16,
                                textColor: KColors.kTcolor,
                                fontWeight: FontWeight.w600),
                          ),
                          heightBox(.01),
                          CustomText(
                            alignText: TextAlign.justify,
                            maxLines: 8,
                            text:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                textColor: KColors.kTcolor,
                                fontWeight: FontWeight.w400),
                          ),
                          heightBox(.02),
                          Container(
                            height: kHeight(.1),
                            width: kWidth(.9),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  kWidth(.03),
                                ),
                                border:
                                    Border.all(color: const Color(0xffD9D9D9))),
                            padding: EdgeInsets.all(kWidth(0.025)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: kHeight(.04),
                                  foregroundImage: const AssetImage(
                                      "assets/images/chat1.png"),
                                ),
                                widthBox(.02),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                        text: "John Mickal",
                                        textStyle: KTextStyles().heading(
                                            textColor: KColors.kTcolor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                    CustomText(
                                        text: "Pet's Trainer",
                                        textStyle: KTextStyles().small()),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: KColors.kPrimary,
                                      child: Image.asset(
                                        "assets/icons/chaticon.png",
                                        height: kHeight(.03),
                                      ),
                                    ),
                                    CustomText(
                                        text: "Ask",
                                        textStyle: KTextStyles().small(
                                            fontSize: 12,
                                            textColor: KColors.kSecondary)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          heightBox(.02),
                          CustomText(
                            text: "Key Signals",
                            textStyle: KTextStyles().normal(
                                fontSize: 14,
                                textColor: KColors.kTcolor,
                                fontWeight: FontWeight.w600),
                          ),
                          heightBox(.01),
                          CustomText(
                            alignText: TextAlign.justify,
                            maxLines: 8,
                            text:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                textColor: KColors.kTcolor,
                                fontWeight: FontWeight.w400),
                          ),
                          heightBox(.02),
                          CustomText(
                            text: "Recommended Training",
                            textStyle: KTextStyles().normal(
                                fontSize: 14,
                                textColor: KColors.kTcolor,
                                fontWeight: FontWeight.w600),
                          ),
                          heightBox(.02),
                          SizedBox(
                            height: kHeight(.23),
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return TrainingBox();
                                },
                                separatorBuilder: (context, index) {
                                  return widthBox(0.04);
                                },
                                itemCount: 8),
                          ),
                          heightBox(.1),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: kWidth(.2), left: kWidth(.1)),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CustomText(
                      text: "Go Back",
                      textStyle: KTextStyles()
                          .normal(fontSize: 16, fontWeight: FontWeight.w700)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TrainingBox extends StatelessWidget {
  const TrainingBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.45),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            kWidth(.03),
          ),
          border: Border.all(color: const Color(0xffD9D9D9))),
      padding: EdgeInsets.all(kWidth(0.025)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(kWidth(.02)),
            child: Image.asset(
              "assets/images/home.png",
              fit: BoxFit.fill,
              height: kHeight(.15),
              width: kWidth(.4),
            ),
          ),
          heightBox(.01),
          CustomText(
            text: "Specialization phase 1",
            textStyle: KTextStyles().normal(
                fontSize: 14,
                textColor: KColors.kTcolor,
                fontWeight: FontWeight.w600),
          ),
          CustomText(
            alignText: TextAlign.left,
            maxLines: 2,
            text: "Socialization",
            textStyle: KTextStyles().normal(
                fontSize: 12,
                textColor: KColors.kTcolor,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
