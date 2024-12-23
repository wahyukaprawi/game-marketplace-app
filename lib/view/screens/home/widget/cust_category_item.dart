import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class CustCategoryItem extends StatefulWidget {
  final String title;
  IconData icon;
  Color? bgColor;
  Color? icColor;

  CustCategoryItem({
    super.key,
    required this.title,
    required this.icon,
    this.bgColor,
    this.icColor,
  });

  @override
  State<CustCategoryItem> createState() => _CustCategoryItemState();
}

class _CustCategoryItemState extends State<CustCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              widget.icon,
              size: 24,
              color: widget.icColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}