import 'package:flutter/material.dart';

class CustStarRating extends StatelessWidget {
  final double rating; // Rating value from 0.0 to 5.0
  final double size; // Size of the stars
  final Color color; // Color of the stars
  final Color backgroundColor; // Color of the empty stars

  const CustStarRating({
    super.key,
    required this.rating,
    this.size = 20,
    this.color = Colors.amber,
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        double starFill = rating - index; // Determine fill for each star
        if (starFill >= 1) {
          // Full star
          return Icon(
            Icons.star,
            size: size,
            color: color,
          );
        } else if (starFill > 0) {
          // Partial star
          return Icon(
            Icons.star_half,
            size: size,
            color: color,
          );
        } else {
          // Empty star
          return Icon(
            Icons.star_border,
            size: size,
            color: backgroundColor,
          );
        }
      }),
    );
  }
}
