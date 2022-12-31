import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorName;
  final String doctorSpecialist;
  final String doctorPicture;
  final String doctorRating;
  final String doctorInstitute;

  const DoctorCard(
      {Key? key,
      required this.doctorName,
      required this.doctorSpecialist,
      required this.doctorPicture,
      required this.doctorRating,
      required this.doctorInstitute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(doctorPicture, height: 110, width: 110)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 3.0),
            padding:
                const EdgeInsets.symmetric(vertical: 1.0, horizontal: 10.0),
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(10.0)),
            child: Row(children: [
              const Icon(Icons.star, size: 10),
              Text(doctorRating)
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(doctorName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(doctorSpecialist),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: Text('($doctorInstitute)'),
          )
        ]));
  }
}
