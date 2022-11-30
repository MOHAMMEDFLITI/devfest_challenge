import 'package:dev_fest_chalenge/components/components.dart';
import 'package:dev_fest_chalenge/model/model.dart';
import 'package:flutter/material.dart';

List<Events> events = [
  Events(
    name: 'devfest by gdg algiers',
    place: 'algiers,Esi',
    date: '01 Dec,2022',
  ),
  Events(
    name: 'ideaTech by byteCraft',
    place: 'bejaia,Estin',
    date: '01 Nov,2023',
  ),
  Events(
    name: 'codeRally by byteCraft',
    place: 'bejaia,Estin',
    date: '01 Jan,2023',
  ),
];

bodyFirstDay({
  required double sizeWidth,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '08:30 AM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent[100]!,
              mainText: 'Opening Ceremony',
              isClickable: false,
              cornerColor: Colors.blue,
              sizedBoxWidth: 15,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
              textAlign: TextAlign.start,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '10:30 AM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent[100]!,
              mainText: 'workshop 1',
              isClickable: false,
              cornerColor: Colors.orange,
              sizedBoxWidth: 15,
              isUpperCase: true,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '12:30 PM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent[100]!,
              mainText: 'lunch break',
              isClickable: false,
              cornerColor: Colors.blue,
              sizedBoxWidth: 15,
              isUpperCase: true,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '13:30 PM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[100]!,
              mainText: 'talk 2 (cancelled)',
              isClickable: false,
              cornerColor: Colors.red,
              sizedBoxWidth: 15,
              isUpperCase: true,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '16:30 PM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent[100]!,
              mainText: 'workshop 2',
              isClickable: false,
              isUpperCase: true,
              cornerColor: Colors.blue,
              sizedBoxWidth: 15,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
            ),
          ],
        ),
      ],
    ),
  );
}

bodySecondDay({
  required double sizeWidth,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '08:00 AM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent[100]!,
              mainText: 'Breakfast',
              isClickable: false,
              cornerColor: Colors.blue,
              sizedBoxWidth: 15,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
              textAlign: TextAlign.start,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '10:00 AM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent[100]!,
              mainText: 'workshop 3',
              isClickable: false,
              cornerColor: Colors.orange,
              sizedBoxWidth: 15,
              isUpperCase: true,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '12:00 PM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent[100]!,
              mainText: 'lunch break',
              isClickable: false,
              cornerColor: Colors.blue,
              sizedBoxWidth: 15,
              isUpperCase: true,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '14:00 PM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[100]!,
              mainText: 'talk 3',
              isClickable: false,
              cornerColor: Colors.red,
              sizedBoxWidth: 15,
              isUpperCase: true,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BuildLeftScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]!,
              mainText: '17:30 PM',
              isDayOne: false,
              width: 70,
              height: 50,
              radius: 20,
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            BuildScheduleItem(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent[100]!,
              mainText: 'Closing Ceremony ',
              isClickable: false,
              cornerColor: Colors.blue,
              sizedBoxWidth: 15,
              width: sizeWidth,
              height: 50,
              radius: 10,
              textColor: Colors.black,
            ),
          ],
        ),
      ],
    ),
  );
}
