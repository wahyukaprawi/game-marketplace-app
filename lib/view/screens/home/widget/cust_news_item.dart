import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustNewsItem extends StatefulWidget {
  final ImageProvider image;
  final String title;
  final String description;
  final String date;

  const CustNewsItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  State<CustNewsItem> createState() => _CustNewsItemState();
}

class _CustNewsItemState extends State<CustNewsItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.description,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                height: 90,
                width: 90,
                image: widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
