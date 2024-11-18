// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;
  const DoctorCard(
      {super.key,
      required this.doctorImagePath,
      required this.doctorName,
      required this.doctorProfession,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            //picrure of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagePath,
                height: 56,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //rating of doctor
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(
                  rating,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            // doctor name
            Text(
              doctorName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            //doctor title
            Text(doctorProfession)
          ],
        ),
      ),
    );
  }
}
