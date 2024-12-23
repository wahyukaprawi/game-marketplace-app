import 'package:flutter/material.dart';
import 'package:gaming_marketplace_app/view/screens/product/widget/cust_detail_product.dart';
import 'package:gaming_marketplace_app/view/screens/review/review_screen.dart';

import '../../../utils/assert_image.dart';
import '../chart/chart_screen.dart';
import '../home/widget/cust_product_item.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF0C1A30),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF0C1A30).withOpacity(0.1),
                  const Color(0xFF0C1A30).withOpacity(0.0),
                ],
              ),
            ),
            height: 1,
          ),
        ),
        title: const Text(
          'Detail Product',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
        ),
        actions: [
          const Image(
            height: 20,
            width: 20,
            image: AssetImage(icShare),
          ),
          const SizedBox(
            width: 15,
          ),
          Stack(
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (constext) => const ChartScreen(),
                  ),
                ),
                child: const Image(
                  height: 20,
                  width: 20,
                  image: AssetImage(icChart),
                ),
              ),
              // Positioned(
              //   right: 0,
              //   child: Container(
              //     height: 10,
              //     width: 10,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: const Color(0xFFD92D20),
              //     ),
              //     child: const Center(
              //       child: Text(
              //         '1',
              //         style: TextStyle(
              //           fontSize: 8,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustDetailProduct(
                  imageProduct: AssetImage(imgDetailProduct3),
                  title:
                      'Wireless Controller for PS4/PC with Motion Sensor and 1000mAh Battery - White',
                  price: 'Rp.700.000',
                  rating: '4.9',
                  reviews: '182 Reviews',
                  stock: 'Tersedia 250',
                  profileShop: AssetImage(imgProfileShop1),
                  nameShop: 'Shop Larson Electronic',
                  description:
                      'Rasakan pengalaman gaming terbaik dengan Wireless Controller untuk PS4/PC. Dilengkapi sensor gerak untuk respons presisi dan desain ergonomis yang nyaman digunakan dalam waktu lama. Warna putih modern membuatnya cocok dengan setup gaming Anda.\n\nDengan baterai 1000mAh, kontroler ini menawarkan waktu bermain lebih lama tanpa sering mengisi daya. Konektivitas wireless memastikan gameplay bebas gangguan dan lebih fleksibel. Cocok untuk gamer yang mencari performa maksimal.'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Review (182)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Color(0xFFFFC120),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '4.9',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReviewScreen(),
                  ),
                ),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF0C1A30),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Lihat Semua Review',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk Unggulan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Lihat Semua',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF3669C9),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustProductItem(
                      image: AssetImage(imgProduct1),
                      title: 'TMA-2 HD Wireless',
                      price: 'Rp.500.000',
                      rating: '4.8',
                      reviews: '978 Reviews',
                    ),
                    CustProductItem(
                      image: AssetImage(imgProduct4),
                      title:
                          'Ducky x Varmilo Miya Pro Sea Melody 65% White LED',
                      price: 'Rp.1.200.000',
                      rating: '4.8',
                      reviews: '342 Reviews',
                    ),
                    CustProductItem(
                      image: AssetImage(imgProduct2),
                      title:
                          'Mouse Gaming Razer Mamba Elite Wired Black Razer Chroma',
                      price: 'Rp.1.280.000',
                      rating: '5.0',
                      reviews: '15 Reviews',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFE3A30),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Added',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Image(
                              height: 20,
                              width: 20,
                              image: AssetImage(icAddWishlist),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3669C9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
