import 'package:flutter/material.dart';

class CustRatingDistributionChart extends StatefulWidget {
  final double averageRating;
  final int totalReviews;
  final Map<int, int> ratings;

  const CustRatingDistributionChart({
    super.key,
    required this.averageRating,
    required this.totalReviews,
    required this.ratings,
  });

  @override
  State<CustRatingDistributionChart> createState() =>
      _CustRatingDistributionChartState();
}

class _CustRatingDistributionChartState
    extends State<CustRatingDistributionChart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.averageRating.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "/5",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              Text(
                "${widget.totalReviews} Reviews",
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const VerticalDivider(
            color: Color(0xFFEDEDED),
            thickness: 1,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              children: List.generate(5, (index) {
                int star = 5 - index;
                int count = widget.ratings[star] ?? 0;
                double percentage =
                    widget.totalReviews > 0 ? count / widget.totalReviews : 0;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Row(
                        children: List.generate(5, (i) {
                          return Icon(
                            i < star ? Icons.star : Icons.star_border,
                            color: i < star ? const Color(0xFFFFC120) : Colors.grey,
                            size: 20,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: LinearProgressIndicator(
                          value: percentage,
                          color: const Color(0xFFFFC120),
                          backgroundColor: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                          minHeight: 4,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 25,
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$count',
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
