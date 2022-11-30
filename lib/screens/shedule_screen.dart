import 'package:dev_fest_chalenge/components/components.dart';
import 'package:dev_fest_chalenge/components/constants.dart';
import 'package:dev_fest_chalenge/screens/feedback_screen.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  var isFirstDay = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  headPage(
                    imageOne: 'assets/images/background.png',
                    imageTwo: 'assets/images/Lampe.png',
                    imageThree: 'assets/images/Maqam_el_chahid.png',
                    size: size.width,
                    mainText: 'SCHEDULE',
                    leftPadding: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildScheduleItem(
                        onPress: () {
                          setState(() {
                            isFirstDay = true;
                          });
                        },
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isFirstDay
                            ? Colors.grey[200]!
                            : Colors.orangeAccent[100]!,
                        sizedBoxWidth: 10,
                        mainText: 'day 1',
                        isClickable: true,
                        isUpperCase: true,
                        width: 60,
                        height: 30,
                        radius: 20,
                        textColor: isFirstDay ? Colors.black : Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      BuildScheduleItem(
                        onPress: () {
                          setState(() {
                            isFirstDay = false;
                          });
                        },
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isFirstDay
                            ? Colors.orangeAccent[100]!
                            : Colors.grey[200]!,
                        sizedBoxWidth: 10,
                        mainText: 'day 2',
                        isClickable: true,
                        isUpperCase: true,
                        width: 60,
                        height: 30,
                        radius: 20,
                        textColor: isFirstDay ? Colors.white : Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              isFirstDay
                  ? bodyFirstDay(sizeWidth: size.width * 0.69)
                  : bodySecondDay(sizeWidth: size.width * 0.69),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 210,
                    ),
                    child: Image.asset(
                      'assets/images/Star.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.asset(
                      'assets/images/Arrow.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildScheduleItem(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent[100]!,
                    mainText: 'q&a',
                    isClickable: true,
                    isUpperCase: true,
                    cornerColor: Colors.redAccent[100]!,
                    sizedBoxWidth: 28,
                    width: 80,
                    height: 40,
                    radius: 10,
                    textColor: Colors.black,
                  ),
                  BuildScheduleItem(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FeedbackScreen(),
                        ),
                      );
                    },
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent[100]!,
                    mainText: 'feedback',
                    isClickable: true,
                    isUpperCase: true,
                    cornerColor: Colors.orangeAccent[100]!,
                    sizedBoxWidth: 14,
                    width: 80,
                    height: 40,
                    radius: 10,
                    textColor: Colors.black,
                  ),
                  BuildScheduleItem(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent[100]!,
                    mainText: 'subscribe',
                    isClickable: true,
                    isUpperCase: true,
                    cornerColor: Colors.blueAccent[100]!,
                    sizedBoxWidth: 12,
                    width: 80,
                    height: 40,
                    radius: 10,
                    textColor: Colors.black,
                  ),
                ],
              ),
              footerPage(
                imagesSize: size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
