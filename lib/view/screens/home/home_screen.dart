import 'package:flutter/material.dart';
import 'package:gaming_marketplace_app/utils/assert_image.dart';
import 'package:gaming_marketplace_app/view/screens/chart/chart_screen.dart';
import 'package:gaming_marketplace_app/view/screens/home/widget/cust_carousel_slider.dart';
import 'package:gaming_marketplace_app/view/screens/home/widget/cust_news_item.dart';
import 'package:gaming_marketplace_app/view/screens/home/widget/cust_search_bar.dart';
import 'package:gaming_marketplace_app/view/screens/news/detail_news_screen.dart';
import 'package:gaming_marketplace_app/view/screens/news/news_screen.dart';
import 'package:gaming_marketplace_app/view/screens/notification/notification_screen.dart';
import 'package:gaming_marketplace_app/view/screens/product/product_screen.dart';

import 'widget/cust_category_item.dart';
import 'widget/cust_product_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          'Marketplace Game',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFF3669C9),
          ),
        ),
        centerTitle: true,
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (constext) => const NotificationScreen(),
                      ),
                    ),
                    child: const Image(
                      height: 20,
                      width: 20,
                      image: AssetImage(icNotification),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFD92D20),
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
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
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustSearchBar(),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustCarouselSlider(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kategori',
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustCategoryItem(
                      title: 'Keyboard',
                      icon: Icons.keyboard,
                      bgColor: const Color(0xFFE4F3EA),
                      icColor: const Color(0xFF3A9B7A),
                    ),
                    CustCategoryItem(
                      title: 'Mouse',
                      icon: Icons.mouse,
                      bgColor: const Color(0xFFFFECE8),
                      icColor: const Color(0xFFFE6E4C),
                    ),
                    CustCategoryItem(
                      title: 'Console',
                      icon: Icons.videogame_asset,
                      bgColor: const Color(0xFFFFF6E4),
                      icColor: const Color(0xFFFFC120),
                    ),
                    CustCategoryItem(
                      title: 'Headset',
                      icon: Icons.headset,
                      bgColor: const Color(0xFFF1EDFC),
                      icColor: const Color(0xFF9B81E5),
                    ),
                    CustCategoryItem(
                      title: 'Monitor',
                      icon: Icons.tv,
                      bgColor: const Color(0xFFE4F3EA),
                      icColor: const Color(0xFF3A9B7A),
                    ),
                    CustCategoryItem(
                      title: 'Laptop',
                      icon: Icons.laptop,
                      bgColor: const Color(0xFFFFECE8),
                      icColor: const Color(0xFFFE6E4C),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk Terlaris',
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (constext) => const ProductScreen(),
                        ),
                      ),
                      child: const CustProductItem(
                        image: AssetImage(imgProduct3),
                        title:
                            'Wireless Controller for PS4/PC with Motion Sensor and 1000mAh Battery - White',
                        price: 'Rp.700.000',
                        rating: '4.9',
                        reviews: '182 Reviews',
                      ),
                    ),
                    const CustProductItem(
                      image: AssetImage(imgProduct4),
                      title:
                          'Ducky x Varmilo Miya Pro Sea Melody 65% White LED',
                      price: 'Rp.1.200.000',
                      rating: '4.8',
                      reviews: '342 Reviews',
                    ),
                    const CustProductItem(
                      image: AssetImage(imgProduct1),
                      title: 'TMA-2 HD Wireless',
                      price: 'Rp.500.000',
                      rating: '4.8',
                      reviews: '978 Reviews',
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
              child: SizedBox(
                height: 160,
                child: Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: const Image(
                      image: AssetImage(imgBanner),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Barang Baru',
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
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustProductItem(
                      image: AssetImage(imgProduct2),
                      title:
                          'Mouse Gaming Razer Mamba Elite Wired Black Razer Chroma',
                      price: 'Rp.1.280.000',
                      rating: '5.0',
                      reviews: '15 Reviews',
                    ),
                    CustProductItem(
                      image: AssetImage(imgProduct5),
                      title: 'Monitor LG 23.8'
                          ' IPS Full HD 3-Side Virtually Borderless',
                      price: 'Rp.2.850.000',
                      rating: '4.9',
                      reviews: '13 Reviews',
                    ),
                    CustProductItem(
                      image: AssetImage(imgProduct4),
                      title:
                          'Ducky x Varmilo Miya Pro Sea Melody 65% White LED',
                      price: 'Rp.1.200.000',
                      rating: '4.8',
                      reviews: '342 Reviews',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk Terbaik',
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
            const SizedBox(
              height: 10,
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
                      image: AssetImage(imgProduct6),
                      title:
                          'Apple MacBook Pro 15.4" TouchBar Grey intel® Quad-Core i7 2.6GHz 2016',
                      price: 'Rp.6.500.000',
                      rating: '5.0',
                      reviews: '64 Reviews',
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
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Berita Terbaru',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailNewsScreen(),
                      ),
                    ),
                    child: const CustNewsItem(
                      image: AssetImage(imgNews1),
                      title:
                          'Cyberpunk 2077 Phantom Liberty Meningkatkan Pengalaman Gameplay',
                      description:
                          'CD Projekt Red telah merilis ekspansi terbaru untuk Cyberpunk 2077 yang bertajuk Phantom Liberty. Ekspansi ini menghadirkan cerita baru, peningkatan mekanik gameplay, dan fitur RPG yang lebih mendalam. Dengan tambahan karakter utama baru dan wilayah yang dapat dijelajahi, Phantom Liberty sukses menarik kembali pemain lama yang ingin merasakan pengalaman berbeda di dunia Night City.',
                      date: '22 Desember 2024',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Color(0xFFEDEDED),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustNewsItem(
                    image: AssetImage(imgNews2),
                    title:
                        'Genshin Impact Umumkan Region Baru, Fontaine, dan Karakter Eksklusif',
                    description:
                        'Hoyoverse resmi mengumumkan pembaruan besar dengan menghadirkan region baru, Fontaine, di dalam dunia Genshin Impact. Selain wilayah yang penuh dengan elemen air dan teknologi, update ini juga memperkenalkan karakter eksklusif dengan latar belakang yang menarik, seperti Furina dan Neuvillette. Event musiman juga telah disiapkan untuk merayakan perilisan ini.',
                    date: '20 Desember 2024',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Color(0xFFEDEDED),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustNewsItem(
                    image: AssetImage(imgNews3),
                    title:
                        'E-Sports Terbesar Indonesia 2024 MPL Season 14 Jadi Sorotan',
                    description:
                        'Turnamen Mobile Legends Professional League (MPL) Indonesia Season 14 menjadi ajang e-sports paling bergengsi tahun ini. Dengan total hadiah hingga Rp10 miliar, MPL Season 14 menarik perhatian para tim ternama seperti RRQ dan ONIC yang bersaing memperebutkan gelar juara. Final yang berlangsung di Jakarta berhasil mencetak rekor jumlah penonton daring terbesar sepanjang sejarah MPL.',
                    date: '19 Desember 2024',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewsScreen(),
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
                    'Lihat Semua Berita',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
