import 'package:flutter/material.dart';

Widget headPage({
  required String imageOne,
  required String imageTwo,
  required String imageThree,
  required double size,
  String? mainText,
  InlineSpan? text,
  double? leftPadding,
}) =>
    Container(
      height: 200,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              imageOne,
              width: size,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            left: 5,
            child: Image.asset(
              imageTwo,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 140,
            left: 55,
            //text == null ? Text(mainText!) : text
            child: text == null
                ? Padding(
                    padding: EdgeInsets.only(
                      left: leftPadding!,
                    ),
                    child: Text(
                      mainText!,
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : RichText(
                    text: text,
                  ),
          ),
          Positioned(
            top: 125,
            right: 5,
            child: Image.asset(
              imageThree,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );

BuildScheduleItem({
  required double height,
  required double width,
  required double sizedBoxWidth,
  required double radius,
  required String mainText,
  required Color color,
  Color cornerColor = Colors.grey,
  required Color textColor,
  required FontWeight fontWeight,
  required double fontSize,
  bool isUpperCase = false,
  TextAlign? textAlign,
  Function? onPress,
  required bool isClickable,
}) {
  return MouseRegion(
    cursor: isClickable ? SystemMouseCursors.click : SystemMouseCursors.basic,
    child: GestureDetector(
      onTap: () {
        onPress!();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          children: [
            Container(
              height: height - 30,
              width: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  bottomLeft: Radius.circular(radius),
                ),
                color: cornerColor,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 2,
                ),
              ),
            ),
            SizedBox(
              width: sizedBoxWidth,
            ),
            Text(
              isUpperCase ? mainText.toUpperCase() : mainText,
              maxLines: 1,
              textAlign: textAlign,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: textColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

BuildLeftScheduleItem({
  required double height,
  required double width,
  required double radius,
  required String mainText,
  required Color color,
  required Color textColor,
  required FontWeight fontWeight,
  required double fontSize,
  bool isDayOne = true,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          mainText,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            isDayOne == true ? 'Oct 31' : 'Nov 01',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget footerPage({
  required double imagesSize,
}) {
  return Container(
    height: 150,
    child: Stack(
      children: [
        Positioned(
          bottom: 10,
          child: Image.asset(
            'assets/images/background2.png',
            fit: BoxFit.contain,
            width: imagesSize,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            'assets/images/background3.png',
            fit: BoxFit.contain,
            width: imagesSize,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            'assets/images/text.png',
            fit: BoxFit.fill,
            width: imagesSize,
          ),
        ),
      ],
    ),
  );
}
