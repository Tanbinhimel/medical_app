import 'package:flutter/material.dart';
import 'package:medical_app/widgets/doctor_card.dart';

import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressedGetStarted() {}

  final doctorList = [
    [
      'Dr. Ruhi',
      'Surgeon',
      'lib/images/ruhi.png',
      '5.0',
      'Dhaka Medical College'
    ],
    [
      'Dr. Ferdouse',
      'Surgeon',
      'lib/images/ferdouse.png',
      '5.0',
      'Dhaka Medical College'
    ],
    [
      'Dr. Jannatul',
      'Surgeon',
      'lib/images/jannatul.png',
      '5.0',
      'Dhaka Medical College'
    ]
  ];

  final doctorCategories = [
    ['Surgeon', 'lib/icons/stethoscope.png'],
    ['Dentist', 'lib/icons/tooth.png'],
    ['Therapist', 'lib/icons/therapist.png']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade50,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.0),
                                  child: Text('Hello,',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.0),
                                  child: Text('Ruhi!',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold)),
                                )
                              ]),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.asset('lib/images/ruhi.png',
                                height: 60, width: 60),
                          )
                        ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Lottie.asset('lib/animations/doctor-prescription.json',
                            height: 120, width: 120),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.0),
                                    child: Text('How do You feel?',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold))),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.0),
                                  child: Text(
                                      'Feel out Your Medical card right now!'),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        backgroundColor: Colors.deepPurple),
                                    onPressed: onPressedGetStarted,
                                    child: const Center(
                                        child: Text('Get Started')))
                              ]),
                        ))
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      padding: const EdgeInsets.only(top: 2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.pink.shade100),
                      child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.grey),
                              hintText: 'How can we help you?',
                              hintStyle: TextStyle(color: Colors.grey)))),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      height: 65,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: doctorCategories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                margin: const EdgeInsets.only(right: 10.0),
                                padding: const EdgeInsets.all(15.0),
                                // color: Colors.pink.shade100,
                                decoration: BoxDecoration(
                                    color: Colors.pink.shade100,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(children: [
                                  Image.asset(doctorCategories[index][1],
                                      height: 30,
                                      width: 30,
                                      color: Colors.grey.shade700),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(doctorCategories[index][0],
                                        style: TextStyle(
                                            color: Colors.grey.shade700)),
                                  )
                                ]));
                          })),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Doctor List',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('See all', style: TextStyle(color: Colors.teal))
                        ]),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: doctorList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return DoctorCard(
                              doctorName: doctorList[index][0],
                              doctorSpecialist: doctorList[index][1],
                              doctorPicture: doctorList[index][2],
                              doctorRating: doctorList[index][3],
                              doctorInstitute: doctorList[index][4]);
                        }),
                  ))
                ]))));
  }
}
