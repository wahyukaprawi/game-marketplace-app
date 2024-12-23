import 'package:flutter/material.dart';

import '../../../../utils/assert_image.dart';

class CustSearchBarNews extends StatefulWidget {
  const CustSearchBarNews({super.key});

  @override
  State<CustSearchBarNews> createState() => _CustSearchBarNewsState();
}

class _CustSearchBarNewsState extends State<CustSearchBarNews> {
  final TextEditingController _textController = TextEditingController();
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: _textController,
        maxLines: 1,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          hintText: 'Cari Berita',
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Color(0xFFB8B8B8),
            fontWeight: FontWeight.w400,
          ),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              icSearch,
              width: 20,
              height: 20,
            ),
          ),
          contentPadding: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}
