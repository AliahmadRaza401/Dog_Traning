import '../../../widgets/widgets_imports.dart';

class Sessions extends StatelessWidget {
  const Sessions({Key? key}) : super(key: key);

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
              Center(
                child: SizedBox(
                  width: kWidth(0.9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "Book Sessions",
                          textStyle: KTextStyles().heading(
                              textColor: KColors.kSecondary,
                              fontSize: 22,
                              fontWeight: FontWeight.w600)),
                      heightBox(.01),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 8,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.8,
                          crossAxisCount: 2,
                          mainAxisSpacing: kWidth(.05),
                          crossAxisSpacing: kWidth(.05),
                        ),
                        itemBuilder: (context, index) {
                          return const BookSessionsCard();
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

class BookSessionsCard extends StatelessWidget {
  const BookSessionsCard({
    super.key,
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
              "assets/images/session.png",
              fit: BoxFit.fill,
              height: kHeight(0.18),
              width: context.width,
            ),
          ),
          heightBox(.01),
          Container(
            padding: EdgeInsets.only(left: kWidth(.02)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: "Dog Trainer Name",
                    textStyle: KTextStyles().normal(
                        textColor: KColors.kTcolor,
                        fontWeight: FontWeight.w500)),
                CustomText(
                    text: "Special Dog Trainer",
                    textStyle: KTextStyles().normal(
                        fontSize: 12,
                        textColor: KColors.kTcolor,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
