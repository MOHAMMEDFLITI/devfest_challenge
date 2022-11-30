import 'package:dev_fest_chalenge/components/components.dart';
import 'package:dev_fest_chalenge/components/constants.dart';
import 'package:dev_fest_chalenge/model/model.dart';
import 'package:dev_fest_chalenge/screens/shedule_screen.dart';
import 'package:flutter/material.dart';

class CurrentEventScreen extends StatelessWidget {
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
                children: [
                  headPage(
                    imageOne: 'assets/images/background.png',
                    imageTwo: 'assets/images/Lampe.png',
                    imageThree: 'assets/images/Maqam_el_chahid.png',
                    size: size.width,
                    text: const TextSpan(
                      text: 'CURRENT',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: ' E',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(
                          text: 'VENTS',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScheduleScreen(),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            child: Image.asset(
                              'assets/images/background5.png',
                              scale: 1.09,
                            ),
                          ),
                          Image.asset(
                            'assets/images/background4.png',
                            scale: 1.08,
                          ),
                          Positioned(
                              left: 20,
                              top: 55,
                              child: Image.asset(
                                'assets/images/Globe.png',
                                fit: BoxFit.cover,
                              )),
                          const Positioned(
                            top: 135,
                            left: 40,
                            child: Text(
                              'HACK IT',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 170,
                            left: 40,
                            child: Text(
                              'Workshops,talks,challenges and more',
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Positioned(
                              left: 20,
                              bottom: 60,
                              child: Image.asset(
                                'assets/images/Developers.png',
                                fit: BoxFit.cover,
                              )),
                          const Positioned(
                            bottom: 40,
                            left: 60,
                            child: Text(
                              '+80',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              right: 52,
                              bottom: 45,
                              child: Image.asset(
                                'assets/images/Pointer.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0),
                    child: Image.asset(
                      'assets/images/Star.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 31,
                    ),
                    child: Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'UPCOMING',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: ' E',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: 'VENTS',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: Image.asset(
                            'assets/images/Arrow.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      left: 31,
                      right: 5,
                    ),
                    child: SizedBox(
                      height: 110,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            buildEventItem(events[index]),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 1,
                        ),
                        itemCount: events.length,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildEventItem(Events event) {
    return Container(
      width: 400,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/background3.png',
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                bottom: 10,
                top: 30.0,
                right: 10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 18,
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'assets/images/Event_label_image.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          event.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          event.date,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          event.place,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
