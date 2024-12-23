import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustProductItem extends StatefulWidget {
  final ImageProvider image;
  final String title;
  final String price;
  final String rating;
  final String reviews;

  const CustProductItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    required this.reviews,
  });

  @override
  State<CustProductItem> createState() => _CustProductItemState();
}

class _CustProductItemState extends State<CustProductItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 265,
        width: MediaQuery.of(context).size.width * 0.42,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFE8ECF3),
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(0, 0),
            )
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 175,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Image(
                image: widget.image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 90,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.price,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFE3A30),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: Color(0xFFFFC120),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          widget.rating,
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          widget.reviews,
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.more_vert,
                          size: 18,
                          color: Color(0xFF838589),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
