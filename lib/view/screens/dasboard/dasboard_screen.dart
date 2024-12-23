import 'package:flutter/material.dart';
import 'package:gaming_marketplace_app/utils/assert_image.dart';
import 'package:gaming_marketplace_app/utils/myloading.dart/my_loading.dart';
import 'package:provider/provider.dart';

import '../account/account_screen.dart';
import '../home/home_screen.dart';
import '../transaksi/transaksi_screen.dart';
import '../wishlist/wishlist_screen.dart';

class DasboardScreen extends StatefulWidget {
  const DasboardScreen({super.key});

  @override
  State<DasboardScreen> createState() => _DasboardScreenState();
}

class _DasboardScreenState extends State<DasboardScreen> {
  final List<Widget> mListOfWidget = [
    const HomeScreen(),
    const WishlistScreen(),
    const TransaksiScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MyLoading>(
      builder: (context, value, child) {
        return mListOfWidget[value.getSelectedItem];
      },
    ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Consumer<MyLoading>(
        builder: (context, value, child) {
          return SizedBox(
            height: 55,
            child: BottomNavigationBar(
              backgroundColor: const Color(0xFFFFFFFF),
              selectedItemColor: const Color(0xFF3669C9),
              unselectedItemColor: const Color(0xFF0C1A30),
              selectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              showUnselectedLabels: true,
              showSelectedLabels: true,
              currentIndex: value.getSelectedItem,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                Provider.of<MyLoading>(context, listen: false)
                    .setSelectedItem(value);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Image(
                        height: 20,
                        width: 20,
                        image: const AssetImage(icHome),
                        color: value.getSelectedItem == 0
                            ? const Color(0xFF3669C9)
                            : const Color(0xFF0C1A30),
                      ),
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Image(
                        height: 20,
                        width: 20,
                        image: const AssetImage(icWishlist),
                        color: value.getSelectedItem == 1
                            ? const Color(0xFF3669C9)
                            : const Color(0xFF0C1A30),
                      ),
                    ),
                    label: 'Wishlist'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Image(
                        height: 20,
                        width: 20,
                        image: const AssetImage(icTransaksi),
                        color: value.getSelectedItem == 2
                            ? const Color(0xFF3669C9)
                            : const Color(0xFF0C1A30),
                      ),
                    ),
                    label: 'Transaksi'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Image(
                        height: 20,
                        width: 20,
                        image: const AssetImage(icAccount),
                        color: value.getSelectedItem == 3
                            ? const Color(0xFF3669C9)
                            : const Color(0xFF0C1A30),
                      ),
                    ),
                    label: 'Account'),
              ],
            ),
          );
        },
      ),
    );
  }
}
