import 'package:flutter/material.dart';
import 'package:gaming_marketplace_app/utils/assert_image.dart';

// ignore: must_be_immutable
class CustDetailProduct extends StatefulWidget {
  final ImageProvider imageProduct;
  final String title;
  final String price;
  final String rating;
  final String reviews;
  final String stock;
  final ImageProvider profileShop;
  final String nameShop;
  final String description;

  const CustDetailProduct({
    super.key,
    required this.imageProduct,
    required this.title,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.stock,
    required this.profileShop,
    required this.nameShop,
    required this.description,
  });

  @override
  State<CustDetailProduct> createState() => _CustDetailProductState();
}

class _CustDetailProductState extends State<CustDetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 300,
          width: double.infinity,
          image: widget.imageProduct,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.price,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFFFE3A30),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.star,
              size: 19,
              color: Color(0xFFFFC120),
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              widget.rating,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              widget.reviews,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Container(
              height: 25,
              width: 85,
              decoration: BoxDecoration(
                color: const Color(0xFFEEFAF6),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                widget.stock,
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xFF3A9B7A),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          color: Color(0xFFEDEDED),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: const Image(
                height: 50,
                width: 50,
                image: AssetImage(imgProfileShop1),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.nameShop,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Official Store',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image(
                      height: 20,
                      width: 20,
                      image: AssetImage(icVerification),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: Color(0xFF838589),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          color: Color(0xFFEDEDED),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Deskripsi Produk',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          widget.description,
          style: const TextStyle(fontSize: 14, height: 1.7),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Color(0xFFEDEDED),
        ),
      ],
    );
  }
}
