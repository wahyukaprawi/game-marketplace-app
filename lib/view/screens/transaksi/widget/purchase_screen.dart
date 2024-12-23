import 'package:flutter/material.dart';

import '../../../../utils/assert_image.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({super.key});

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
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