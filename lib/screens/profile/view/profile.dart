import '../../../widgets/widgets_imports.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());
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
                        child: Column(
                          children: [
                            CustomText(
                                text: "Profile",
                                textStyle: KTextStyles().heading(
                                    textColor: KColors.kSecondary,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600)),
                            heightBox(0.01),
                            CircleAvatar(
                              backgroundColor: KColors.kGrey,
                              radius: kWidth(.13),
                              backgroundImage: const AssetImage(
                                "assets/images/chat1.png",
                              ),
                            ),
                            heightBox(0.01),
                            CustomText(
                                text: "Catherine Smith",
                                textStyle: KTextStyles().normal(
                                  textColor: KColors.kTcolor,
                                  fontWeight: FontWeight.w600,
                                )),
                            CustomText(
                                text: "email@example.com",
                                textStyle: KTextStyles().normal(
                                  textColor: const Color(0xff414141),
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                      ),
                      heightBox(0.02),
                      CustomText(
                          text: "Progress Report",
                          textStyle: KTextStyles().normal(
                            fontSize: 16,
                            textColor: KColors.kTcolor,
                            fontWeight: FontWeight.w600,
                          )),
                      Row(
                        children: [
                          SizedBox(
                            height: kHeight(.07),
                            width: kWidth(0.45),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: kHeight(0.07),
                                  width: kWidth(.08),
                                  child: Center(
                                    child: Icon(
                                      Icons.videocam_outlined,
                                      size: kHeight(.035),
                                      color: KColors.kSecondary,
                                    ),
                                  ),
                                ),
                                widthBox(.02),
                                SizedBox(
                                  width: kWidth(.3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                          text: "Levels",
                                          textStyle: KTextStyles().normal(
                                            fontSize: 12,
                                            textColor: KColors.kTcolor,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      CustomText(
                                          text: "2 Levels Completed",
                                          textStyle: KTextStyles().normal(
                                            fontSize: 12,
                                            textColor: KColors.kTcolor,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: kHeight(.07),
                            width: kWidth(0.45),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: kHeight(0.07),
                                  width: kWidth(.08),
                                  child: Center(
                                    child: Icon(
                                      Icons.percent,
                                      size: kHeight(.035),
                                      color: KColors.kSecondary,
                                    ),
                                  ),
                                ),
                                widthBox(.02),
                                SizedBox(
                                  width: kWidth(.3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                          text: "Milestones",
                                          textStyle: KTextStyles().normal(
                                            fontSize: 12,
                                            textColor: KColors.kTcolor,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      CustomText(
                                          text: "20 % Completed",
                                          textStyle: KTextStyles().normal(
                                            fontSize: 12,
                                            textColor: KColors.kTcolor,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ProfileTile(
                              icon: profileController.profileTileContent[index]
                                  ["icon"],
                              title: profileController.profileTileContent[index]
                                  ["title"],
                              func: profileController.profileTileContent[index]
                                  ["func"],
                            );
                          },
                          separatorBuilder: (context, index) => heightBox(.02),
                          itemCount:
                              profileController.profileTileContent.length)
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

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback func;
  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: kHeight(.06),
        width: kWidth(.9),
        decoration: BoxDecoration(
            color: KColors.kWhite,
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(.1),
                offset: const Offset(0, -1),
                blurRadius: 4,
              ),
            ],
            borderRadius: BorderRadius.circular(kWidth(.03))),
        padding: EdgeInsets.symmetric(horizontal: kWidth(.02)),
        child: Row(
          children: [
            SizedBox(
              height: kHeight(0.07),
              width: kWidth(.08),
              child: Center(
                child: Icon(
                  icon,
                  size: kHeight(.035),
                  color: KColors.kSecondary,
                ),
              ),
            ),
            widthBox(.02),
            SizedBox(
              width: kWidth(.7),
              child: CustomText(
                  alignText: TextAlign.left,
                  text: title,
                  textStyle: KTextStyles().subHeading(
                      textColor: KColors.kTcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}
