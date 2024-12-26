import 'package:flutter/material.dart';

class CustStarRating extends StatelessWidget {
  final double rating;
  final double size;
  final Color color;
  final Color backgroundColor; 

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
        double starFill = rating - index;
        if (starFill >= 1) {
          // Full star
          return Icon(
            Icons.star,
            size: size,
            color: color,
          );
        } else if (starFill > 0) {
          return Icon(
            Icons.star_half,
            size: size,
            color: color,
          );
        } else {
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
