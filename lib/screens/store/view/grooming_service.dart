import '../../../widgets/widgets_imports.dart';

class GroomingService extends StatelessWidget {
  GroomingService({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final StoreCard data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: SingleChildScrollView(
          child: Stack(children: [
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const KAppBar(title: "Pet Detail"),
                    heightBox(.01),
                    Container(
                      height: kHeight(.4),
                      width: kWidth(1),
                      decoration: BoxDecoration(
                        color: KColors.kSecondary,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(kWidth(.04)),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(kWidth(.04)),
                        ),
                        child: Image.asset(
                          data.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    heightBox(.02),
                    SizedBox(
                      width: kWidth(.9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  text: "Grooming Service",
                                  textStyle: KTextStyles().normal(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              CustomText(
                                  text: "\$500",
                                  textStyle: KTextStyles().normal(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600,
                                      textColor: KColors.kSecondary)),
                            ],
                          ),
                          CustomText(
                              alignText: TextAlign.justify,
                              maxLines: 5,
                              text:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              textStyle: KTextStyles()
                                  .normal(fontWeight: FontWeight.w400)),
                          heightBox(.02),
                          CustomText(
                              text: "Similar Services",
                              textStyle: KTextStyles().normal(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          heightBox(.01),
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
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: kHeight(.9)),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: PrimaryButton(
                  borderRadius: .5,
                  width: .9,
                  text: "Book Service",
                  function: () {},
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
