import 'package:flutter/material.dart';
import 'package:gaming_marketplace_app/view/screens/transaksi/widget/purchase_screen.dart';
import 'package:gaming_marketplace_app/view/screens/transaksi/widget/sales_screen.dart';

class TransaksiScreen extends StatefulWidget {
  const TransaksiScreen({super.key});

  @override
  State<TransaksiScreen> createState() => _TransaksiScreenState();
}

class _TransaksiScreenState extends State<TransaksiScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100), 
        child: AppBar(
          title: const Text(
            'Transaksi',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController,
            labelPadding: const EdgeInsets.only(bottom: 15), 
            labelColor: const Color(0xFF3669C9),
            unselectedLabelColor: const Color(0xFF828282),
            indicatorColor: const Color(0xFF3669C9),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Text(
                'Penjualan',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Pembelian',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                SalesScreen(),
                PurchaseScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
