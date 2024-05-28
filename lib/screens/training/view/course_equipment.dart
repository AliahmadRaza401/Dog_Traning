import 'package:dog_training/widgets/widgets_imports.dart';

class CourseEquipment extends StatelessWidget {
  const CourseEquipment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox(.08),
              Align(
                  alignment: Alignment.centerRight, child: Icon(Icons.cancel)),
              CustomText(
                  text: "Course Equipment",
                  textStyle: KTextStyles()
                      .normal(fontSize: 24, fontWeight: FontWeight.w600)),
              heightBox(.01),
              CustomText(
                  alignText: TextAlign.left,
                  maxLines: 8,
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                  textStyle: KTextStyles()
                      .normal(fontSize: 12, fontWeight: FontWeight.w400)),
              heightBox(.02),
              CourseEquipmentTile(
                  title: "Enrichment Toy",
                  subtitle: "Quantity: several",
                  img: "assets/images/1.png"),
              heightBox(.01),
              CourseEquipmentTile(
                  title: "Crate",
                  subtitle: "Quantity: 1-2",
                  img: "assets/images/2.png"),
              heightBox(.01),
              CourseEquipmentTile(
                  title: "Dog Treat",
                  subtitle: "Quantity: 1-2",
                  img: "assets/images/3.png"),
              heightBox(.01),
              CourseEquipmentTile(
                  title: "Crate Bag",
                  subtitle: "Quantity: 1",
                  img: "assets/images/4.png")
            ],
          ),
        ),
      ),
    );
  }
}

class CourseEquipmentTile extends StatelessWidget {
  final String title, subtitle, img;
  const CourseEquipmentTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(.1),
      width: kWidth(.9),
      padding: EdgeInsets.all(kWidth(0.025)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(kWidth(.02)),
            child: Image.asset(
              img,
              fit: BoxFit.fill,
              height: kHeight(.1),
              width: kWidth(.2),
            ),
          ),
          widthBox(.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: title,
                  textStyle: KTextStyles().heading(
                      textColor: KColors.kTcolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              CustomText(
                  text: subtitle,
                  textStyle: KTextStyles()
                      .small(fontSize: 14, fontWeight: FontWeight.w400)),
            ],
          ),
          Spacer(),
          Icon(CupertinoIcons.forward),
        ],
      ),
    );
  }
}
