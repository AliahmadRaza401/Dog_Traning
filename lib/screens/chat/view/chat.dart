import '../../../widgets/widgets_imports.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

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
                          text: "Messages",
                          textStyle: KTextStyles().heading(
                              textColor: KColors.kSecondary,
                              fontSize: 22,
                              fontWeight: FontWeight.w600)),
                      heightBox(0.02),
                      ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const ChatTile();
                          },
                          separatorBuilder: (context, index) => heightBox(.02),
                          itemCount: 7),
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

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeight(0.06),
      width: kWidth(.9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: KColors.kGrey,
            radius: kWidth(.065),
            backgroundImage: const AssetImage(
              "assets/images/chat1.png",
            ),
          ),
          widthBox(.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: kWidth(.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "Kevin.eth",
                        textStyle: KTextStyles().normal(
                          textColor: const Color(0xff213241),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    CustomText(
                        text: "14:28",
                        textStyle: KTextStyles().normal(
                          textColor: const Color(0xff676A6C),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  CustomText(
                      text: "Kevin.eth is typing",
                      textStyle: KTextStyles().normal(
                        textColor: const Color(0xff676A6C),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
