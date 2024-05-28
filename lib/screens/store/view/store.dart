import 'package:dog_training/screens/store/controller/store_controller.dart';

import '../../../widgets/widgets_imports.dart';

class Store extends StatelessWidget {
  Store({Key? key}) : super(key: key);
  final StoreController storeController = Get.put(StoreController());
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
                        child: CustomText(
                            text: "Store",
                            textStyle: KTextStyles().heading(
                                textColor: KColors.kSecondary,
                                fontSize: 22,
                                fontWeight: FontWeight.w600)),
                      ),
                      heightBox(0.02),
                      Container(
                        height: kHeight(0.05),
                        width: kWidth(0.9),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffD9D9D9),
                            ),
                            borderRadius: BorderRadius.circular(kWidth(.02))),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                storeController.selectContainer.value = true;
                              },
                              child: Obx(() {
                                return Container(
                                  height: kHeight(0.05),
                                  width: kWidth(0.44),
                                  decoration: BoxDecoration(
                                    color:
                                        storeController.selectContainer.value ==
                                                true
                                            ? KColors.kPrimary
                                            : KColors.kWhite,
                                    borderRadius: BorderRadius.circular(
                                      kWidth(.02),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: CustomText(
                                      text: "Inter",
                                      textStyle: KTextStyles().normal(
                                          textColor: storeController
                                                      .selectContainer.value ==
                                                  true
                                              ? KColors.kSecondary
                                              : const Color(0xffD9D9D9),
                                          fontWeight: FontWeight.w700)),
                                );
                              }),
                            ),
                            GestureDetector(
                              onTap: () {
                                storeController.selectContainer.value = false;
                              },
                              child: Obx(() {
                                return Container(
                                  height: kHeight(0.05),
                                  width: kWidth(0.44),
                                  decoration: BoxDecoration(
                                    color:
                                        storeController.selectContainer.value ==
                                                false
                                            ? KColors.kPrimary
                                            : KColors.kWhite,
                                    borderRadius: BorderRadius.circular(
                                      kWidth(.02),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: CustomText(
                                      text: "Events",
                                      textStyle: KTextStyles().normal(
                                          textColor: storeController
                                                      .selectContainer.value ==
                                                  false
                                              ? KColors.kSecondary
                                              : const Color(0xffD9D9D9),
                                          fontWeight: FontWeight.w700)),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                      heightBox(.02),
                      Obx(() {
                        return storeController.selectContainer.value == true
                            ? const StoreInter()
                            : GestureDetector(
                                onTap: () {
                                  Get.toNamed("/petshop");
                                },
                                child: const EventsBox(
                                    img: "assets/images/event.png"));
                      })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StoreInter extends StatelessWidget {
  const StoreInter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: context.height,
        width: kWidth(.9),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StoreBanner(
                img: "assets/images/store1.png",
              ),
              heightBox(0.01),
              CustomText(
                  text: "Pet Shops",
                  textStyle: KTextStyles().normal(
                      fontSize: 18,
                      textColor: KColors.kTcolor,
                      fontWeight: FontWeight.w600)),
              heightBox(0.01),
              SizedBox(
                height: kHeight(.25),
                width: kWidth(0.9),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return StoreCard(
                        name: 'Dog Name',
                        img: 'assets/images/storedog.png',
                        index: index,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return widthBox(0.02);
                    },
                    itemCount: 8),
              ),
              heightBox(0.02),
              const StoreBanner(img: "assets/images/storebanner2.png"),
              heightBox(0.02),
              CustomText(
                  text: "Grooming Services",
                  textStyle: KTextStyles().normal(
                      fontSize: 18,
                      textColor: KColors.kTcolor,
                      fontWeight: FontWeight.w600)),
              heightBox(0.01),
              SizedBox(
                height: kHeight(.25),
                width: kWidth(0.9),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return StoreCard(
                        name: 'Hair Cutting',
                        img: 'assets/images/storedog 2.png',
                        index: index,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return widthBox(0.02);
                    },
                    itemCount: 8),
              ),
              heightBox(0.02),
              const StoreBanner(img: "assets/images/storebanner3.png"),
              heightBox(0.01),
              CustomText(
                  text: "Dog Parks",
                  textStyle: KTextStyles().normal(
                      fontSize: 18,
                      textColor: KColors.kTcolor,
                      fontWeight: FontWeight.w600)),
              heightBox(0.01),
              SizedBox(
                height: kHeight(.26),
                width: kWidth(0.9),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const StoreCard2(
                        name: 'The Park Of Pets',
                        img: 'assets/images/dogpark.png',
                      );
                    },
                    separatorBuilder: (context, index) {
                      return widthBox(0.02);
                    },
                    itemCount: 8),
              ),
              heightBox(0.5),
            ],
          ),
        ),
      ),
    );
  }
}

class EventsBox extends StatelessWidget {
  final String img;
  const EventsBox({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(0.34),
      width: kWidth(0.8),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffD9D9D9),
        ),
        borderRadius: BorderRadius.circular(kWidth(.03)),
      ),
      padding: EdgeInsets.all(kWidth(.02)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(kWidth(.03)),
            child: Image.asset(
              img,
              height: kHeight(.15),
              width: kWidth(.8),
              fit: BoxFit.fill,
            ),
          ),
          CustomText(
              text: "Dog Event",
              textStyle: KTextStyles()
                  .normal(fontSize: 16, fontWeight: FontWeight.w600)),
          CustomText(
              text: "Participate in dog game and win prizes",
              textStyle: KTextStyles()
                  .normal(fontSize: 14, fontWeight: FontWeight.w400)),
          IconTextButton(
            height: .045,
            text: "   22/04/24",
            img: "assets/icons/calendar.png",
            function: () {},
          ),
          IconTextButton(
            width: .6,
            height: .045,
            text: "At Town Hall , City",
            img: "assets/icons/location.png",
            function: () {},
          ),
        ],
      ),
    );
  }
}

class StoreBanner extends StatelessWidget {
  final String img;
  const StoreBanner({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(0.15),
      width: kWidth(0.9),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffD9D9D9),
        ),
        borderRadius: BorderRadius.circular(kWidth(.03)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kWidth(.03)),
        child: Image.asset(
          img,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  final String name, img;
  final int index;
  const StoreCard({
    super.key,
    required this.name,
    required this.img,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/groomingservice",
            arguments: StoreCard(name: name, img: img, index: index));
      },
      child: Container(
        height: kHeight(0.25),
        width: kWidth(0.37),
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffD9D9D9),
            ),
            borderRadius: BorderRadius.circular(kWidth(0.03))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(kWidth(.03))),
              child: Image.asset(
                img,
                fit: BoxFit.fill,
                height: kHeight(0.15),
                width: context.width,
              ),
            ),
            heightBox(0.005),
            Container(
              padding: EdgeInsets.only(left: kWidth(.02)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: name,
                      textStyle: KTextStyles().normal(
                          textColor: KColors.kTcolor,
                          fontWeight: FontWeight.w600)),
                  CustomText(
                      alignText: TextAlign.left,
                      maxLines: 2,
                      text: "Lorem Ipsum is simply dummy text of th...",
                      textStyle: KTextStyles().normal(
                          fontSize: 12,
                          textColor: KColors.kTcolor,
                          fontWeight: FontWeight.w400)),
                  CustomText(
                      text: "\$500",
                      textStyle: KTextStyles().normal(
                          textColor: KColors.kSecondary,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StoreCard2 extends StatelessWidget {
  final String name, img;
  const StoreCard2({
    super.key,
    required this.name,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(0.25),
      width: kWidth(0.55),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffD9D9D9),
          ),
          borderRadius: BorderRadius.circular(kWidth(0.03))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(kWidth(.03))),
            child: Image.asset(
              img,
              fit: BoxFit.fill,
              height: kHeight(0.18),
              width: context.width,
            ),
          ),
          heightBox(0.005),
          Container(
            padding: EdgeInsets.only(left: kWidth(.02)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: name,
                    textStyle: KTextStyles().normal(
                        textColor: KColors.kTcolor,
                        fontWeight: FontWeight.w600)),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: KColors.kTcolor,
                      size: kHeight(0.025),
                    ),
                    CustomText(
                        alignText: TextAlign.left,
                        maxLines: 2,
                        text: "Town name, arena city, park",
                        textStyle: KTextStyles().normal(
                            fontSize: 12,
                            textColor: KColors.kTcolor,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
