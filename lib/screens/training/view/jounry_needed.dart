import 'package:dog_training/widgets/widgets_imports.dart';

class JounryNeeded extends StatelessWidget {
  const JounryNeeded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(kWidth(.04)),
              child: Image.asset(
                "assets/images/home.png",
                fit: BoxFit.cover,
                height: kHeight(.25),
                width: context.width,
              ),
            ),
            heightBox(.02),
            Center(
              child: SizedBox(
                height: context.height,
                width: kWidth(.9),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "Crate Training",
                          textStyle: KTextStyles().normal(
                              fontSize: 24, fontWeight: FontWeight.w600)),
                      heightBox(.01),
                      CustomText(
                          alignText: TextAlign.left,
                          maxLines: 8,
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                          textStyle: KTextStyles().normal(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      heightBox(.02),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/courseequipment");
                        },
                        child: Container(
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/5.png",
                                height: kHeight(.04),
                              ),
                              widthBox(.1),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                      text: "Equipment  List",
                                      textStyle: KTextStyles().heading(
                                          textColor: KColors.kTcolor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
                                  CustomText(
                                      text: "all you need for this Course",
                                      textStyle: KTextStyles().small(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                              Spacer(),
                              Icon(CupertinoIcons.forward),
                            ],
                          ),
                        ),
                      ),
                      heightBox(.02),
                      CustomText(
                          text: "Instructor",
                          textStyle: KTextStyles().normal(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      Container(
                        height: kHeight(.1),
                        width: kWidth(.9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            kWidth(.03),
                          ),
                        ),
                        padding: EdgeInsets.all(kWidth(0.025)),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: kHeight(.04),
                                foregroundImage:
                                    const AssetImage("assets/images/chat1.png"),
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
                                      text: "VSPDT",
                                      textStyle:
                                          KTextStyles().small(fontSize: 12)),
                                ],
                              ),
                            ]),
                      ),
                      CustomText(
                          alignText: TextAlign.left,
                          maxLines: 3,
                          text:
                              " Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply ",
                          textStyle: KTextStyles().small(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      heightBox(0.02),
                      CustomText(
                          text: "Workshop",
                          textStyle: KTextStyles().normal(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      heightBox(.02),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(kWidth(.04)),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/home.png",
                              height: kHeight(.18),
                              width: kWidth(.9),
                              fit: BoxFit.fill,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: kHeight(.07)),
                              child: Center(
                                child: Icon(
                                  Icons.play_arrow,
                                  color: KColors.kWhite,
                                  size: kHeight(.05),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      heightBox(.02),
                      WorkShopTile(
                        title: 'Workshop 1',
                      ),
                      WorkShopTile(
                        title: 'Workshop 2',
                      ),
                      WorkShopTile(
                        title: 'Workshop 3',
                      ),
                      heightBox(.02),
                      PrimaryButton(
                        borderRadius: .5,
                        width: .9,
                        text: "Course Complete",
                        function: () {},
                      ),
                      heightBox(.3),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WorkShopTile extends StatelessWidget {
  final String title;
  const WorkShopTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: title,
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
                "assets/images/3.png",
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
            Spacer(),
            Checkbox(
              checkColor: KColors.kWhite,
              fillColor: WidgetStateProperty.all(KColors.kGreen),
              value: true,
              onChanged: (value) {},
            )
          ],
        ),
      ],
    );
  }
}
