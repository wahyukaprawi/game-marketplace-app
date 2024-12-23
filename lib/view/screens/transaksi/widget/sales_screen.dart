import 'package:flutter/material.dart';

import '../../../../utils/assert_image.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({super.key});

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          height: 180,
          image: AssetImage(imgNoDataTransaksi),
        ),
      ),
    );
  }
}