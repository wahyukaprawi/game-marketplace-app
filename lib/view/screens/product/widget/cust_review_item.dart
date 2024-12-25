import 'package:flutter/material.dart';

import '../../../../utils/cust_star_rating.dart';

// ignore: must_be_immutable
class CustReviewItem extends StatefulWidget {
  final ImageProvider imageProfilUser;
  final String name;
  final double rating;
  final String reviews;
  final String date;

  const CustReviewItem({
    super.key,
    required this.imageProfilUser,
    required this.name,
    required this.rating,
    required this.reviews,
    required this.date,
  });

  @override
  State<CustReviewItem> createState() => _CustReviewItemState();
}

class _CustReviewItemState extends State<CustReviewItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                height: 48,
                width: 48,
                image: widget.imageProfilUser,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                CustStarRating(rating: widget.rating),
              ],
            ),
            const Spacer(),
            Text(
              widget.date,
              style: const TextStyle(fontSize: 15, color: Color(0xFF838589)),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 63),
          child: Text(
            widget.reviews,
            style: const TextStyle(fontSize: 14, height: 1.6),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
