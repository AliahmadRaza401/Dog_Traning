import '../../../widgets/widgets_imports.dart';

class TrainingCourses extends StatelessWidget {
  const TrainingCourses({Key? key}) : super(key: key);

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
                      CustomText(
                          text: "Courses",
                          textStyle: KTextStyles().normal(
                              fontSize: 26, fontWeight: FontWeight.w600)),
                      heightBox(.01),
                      CustomText(
                          alignText: TextAlign.left,
                          maxLines: 8,
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                          textStyle: KTextStyles().normal(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      heightBox(.02),
                      CustomText(
                          text: "Enrolled Courses",
                          textStyle: KTextStyles().normal(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Center(child: EnrolledCoursesBox());
                        },
                      ),
                      heightBox(.02),
                      CustomText(
                          text: "Add Courses",
                          textStyle: KTextStyles().normal(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      heightBox(.01),
                      AddCourse(),
                      heightBox(.01),
                      AddCourse(),
                      heightBox(.1)
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

class AddCourse extends StatelessWidget {
  const AddCourse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(.18),
      width: kWidth(.9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kWidth(.04)),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(kWidth(.04)),
            child: Opacity(
              opacity: .8,
              child: Image.asset(
                "assets/images/home.png",
                height: kHeight(.18),
                width: kWidth(.9),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: kWidth(.04), right: kWidth(.04), bottom: kHeight(.02)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Impulse Control",
                        textStyle: KTextStyles()
                            .normal(fontSize: 12, textColor: KColors.kWhite)),
                    CustomText(
                        text: " 4 Work Shop",
                        textStyle: KTextStyles()
                            .normal(fontSize: 12, textColor: KColors.kWhite)),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: KColors.kWhite,
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: KColors.kBlack,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EnrolledCoursesBox extends StatelessWidget {
  const EnrolledCoursesBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(kWidth(.02)),
          child: Image.asset(
            "assets/images/home.png",
            fit: BoxFit.fill,
            height: kHeight(.15),
            width: kWidth(.35),
          ),
        ),
        heightBox(.005),
        CustomText(
            text: "Crate Training",
            textStyle:
                KTextStyles().normal(fontSize: 14, fontWeight: FontWeight.w600))
      ],
    );
  }
}
