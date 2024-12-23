import 'package:flutter/material.dart';
import 'package:gaming_marketplace_app/view/screens/news/widget/cust_search_bar_news.dart';

import '../../../utils/assert_image.dart';
import '../home/widget/cust_news_item.dart';
import 'detail_news_screen.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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
          'Berita',
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
              child: CustSearchBarNews(),
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
                    image: AssetImage(imgNews4),
                    title:
                        'The Game Awards 2024 Elden Ring 2 Dinobatkan Sebagai Game Paling Ditunggu',
                    description:
                        'The Game Awards 2024 kembali menjadi ajang bergengsi bagi industri game dunia. Salah satu highlight acara tersebut adalah penghargaan "Most Anticipated Game," yang dimenangkan oleh Elden Ring 2. Sekuel dari game sukses besutan FromSoftware ini dijanjikan akan menghadirkan dunia yang lebih luas, cerita mendalam, dan pertarungan epik khas Souls-like.',
                    date: '18 Desember 2024',
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
                    image: AssetImage(imgNews5),
                    title:
                        'Nintendo Switch 2 Diumumkan dengan Fitur Hardware Revolusioner',
                    description:
                        'Nintendo menggemparkan dunia gaming dengan mengumumkan konsol terbarunya, Nintendo Switch 2. Konsol ini hadir dengan peningkatan performa, seperti layar OLED 4K dan kemampuan backward compatibility. Selain itu, Switch 2 juga menawarkan sistem cloud gaming yang lebih stabil, memungkinkan pengalaman bermain lebih lancar untuk game berat.',
                    date: '17 Desember 2024',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
