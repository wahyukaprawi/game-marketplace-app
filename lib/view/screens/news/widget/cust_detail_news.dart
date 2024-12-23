import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustDetailNews extends StatefulWidget {
  final ImageProvider image;
  final String title;
  final String description;
  final String date;

  const CustDetailNews({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  State<CustDetailNews> createState() => _CustDetailNewsState();
}

class _CustDetailNewsState extends State<CustDetailNews> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            height: 200,
            width: double.infinity,
            image: widget.image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          widget.date,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF797979),
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          widget.description,
          style: const TextStyle(
            fontSize: 14,
            height: 1.7
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
