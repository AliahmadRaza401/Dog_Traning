import '../../../widgets/widgets_imports.dart';

class PetShop extends StatelessWidget {
  const PetShop({Key? key}) : super(key: key);

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
                            text: "Pet Shop",
                            textStyle: KTextStyles().heading(
                                textColor: KColors.kSecondary,
                                fontSize: 22,
                                fontWeight: FontWeight.w600)),
                      ),
                      heightBox(0.02),
                      const StoreBanner(
                        img: "assets/images/store1.png",
                      ),
                      heightBox(0.01),
                      CustomText(
                          alignText: TextAlign.center,
                          maxLines: 4,
                          text:
                              "To support your  training journey, our trainers have cureated their favorite items recommended for us in our courses.",
                          textStyle: KTextStyles().normal(
                              fontSize: 13,
                              textColor: KColors.kTcolor,
                              fontWeight: FontWeight.w600)),
                      heightBox(0.01),
                      CustomText(
                          text: "Dog Training Treats",
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
                      CustomText(
                          text: "Grooming Product",
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
                              return ProductBox(
                                name: 'Bark Butter',
                                img: 'assets/images/product.png',
                                index: index,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return widthBox(0.02);
                            },
                            itemCount: 8),
                      ),
                      heightBox(0.01),
                      CustomText(
                          text: "Grooming Product",
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
                              return ProductBox(
                                name: 'Bark Butter',
                                img: 'assets/images/product.png',
                                index: index,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return widthBox(0.02);
                            },
                            itemCount: 8),
                      ),
                      heightBox(0.1),
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
    return Container(
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
    );
  }
}

class ProductBox extends StatelessWidget {
  final String name, img;
  final int index;
  const ProductBox({
    super.key,
    required this.name,
    required this.img,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
