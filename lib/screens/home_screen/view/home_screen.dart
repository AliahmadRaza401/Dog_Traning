import '../../../widgets/widgets_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                      Row(
                        children: [
                          CustomText(
                              text: "Hi, Catherine",
                              textStyle: KTextStyles().heading(
                                  textColor: KColors.kSecondary,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600)),
                          Image.asset(
                            "assets/images/dog.png",
                            height: kHeight(.06),
                            width: kWidth(0.1),
                          ),
                        ],
                      ),
                      CustomText(
                          text: "Video Tutorials",
                          textStyle: KTextStyles().heading(
                              textColor: KColors.kTcolor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      heightBox(0.01),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const TutorialBox();
                          },
                          separatorBuilder: (context, index) => heightBox(.02),
                          itemCount: 3),
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

class TutorialBox extends StatelessWidget {
  const TutorialBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                width: 0.2,
                text: "2 Months",
                function: () {},
              ),
            ],
          ),
          heightBox(0.01),
          CustomText(
            text: "Dog Training Title",
            textStyle: KTextStyles().normal(
                fontSize: 16,
                textColor: KColors.kTcolor,
                fontWeight: FontWeight.w500),
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
    );
  }
}
