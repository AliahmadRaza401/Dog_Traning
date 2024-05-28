import '../widgets/widgets_imports.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final Color textColor;
  final double fontSize;
  final EdgeInsets padding;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .03,
    this.padding = EdgeInsets.zero,
    this.textColor = KColors.kSecondary,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: CustomText(
            text: text,
            textStyle: KTextStyles().buttonStyle(
                fontSize: fontSize,
                textColor: textColor,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final EdgeInsets padding;

  const SecondaryButton({
    Key? key,
    required this.text,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .03,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: CustomText(
            text: text,
            textStyle: KTextStyles().buttonStyle(),
          ),
        ),
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  final String text;
  final String img;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color, bordercolor;
  final double elevation;
  final EdgeInsets padding;

  const IconTextButton({
    Key? key,
    required this.text,
    required this.img,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
    this.bordercolor = const Color(0xffD9D9D9),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: bordercolor),
          borderRadius: BorderRadius.all(
            Radius.circular(
              kWidth(borderRadius),
            ),
          ),
        ),
        padding: padding,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                img,
                height: kHeight(.04),
              ),
              widthBox(.02),
              CustomText(
                text: text,
                textStyle:
                    KTextStyles().buttonStyle(textColor: KColors.kTcolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final double elevation;
  final EdgeInsets padding;

  const KIconButton({
    Key? key,
    required this.icon,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final double elevation;
  final EdgeInsets padding;

  const OutlineButton({
    Key? key,
    required this.text,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: KColors.noColor,
          border: Border.all(
            width: 1.0,
            color: color,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: CustomText(
            text: text,
            textStyle: KTextStyles().buttonStyle(),
          ),
        ),
      ),
    );
  }
}

class OutlineIconTextButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final double elevation;
  final EdgeInsets padding;

  const OutlineIconTextButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: KColors.noColor,
          border: Border.all(
            width: 1.0,
            color: color,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              widthBox(.02),
              CustomText(
                text: text,
                textStyle: KTextStyles().buttonStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OutlineIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final double elevation;
  final EdgeInsets padding;

  const OutlineIconButton({
    Key? key,
    required this.icon,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: KColors.noColor,
          border: Border.all(
            width: 1.0,
            color: color,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}
