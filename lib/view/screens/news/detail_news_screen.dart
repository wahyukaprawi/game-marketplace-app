import 'package:flutter/material.dart';
import 'package:gaming_marketplace_app/utils/assert_image.dart';
import 'package:gaming_marketplace_app/view/screens/news/news_screen.dart';

import '../home/widget/cust_news_item.dart';
import 'widget/cust_detail_news.dart';

class DetailNewsScreen extends StatefulWidget {
  const DetailNewsScreen({super.key});

  @override
  State<DetailNewsScreen> createState() => _DetailNewsScreenState();
}

class _DetailNewsScreenState extends State<DetailNewsScreen> {
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
          'Detail Berita',
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Image(
              height: 20,
              width: 20,
              image: AssetImage(icShare),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const CustDetailNews(
                image: AssetImage(imgDetailNews1),
                title:
                    'Cyberpunk 2077 Phantom Liberty Meningkatkan Pengalaman Gameplay',
                description:
                    'CD Projekt Red telah merilis ekspansi terbaru untuk Cyberpunk 2077 yang bertajuk Phantom Liberty. Ekspansi ini menghadirkan cerita baru, peningkatan mekanik gameplay, dan fitur RPG yang lebih mendalam. Dengan tambahan karakter utama baru dan wilayah yang dapat dijelajahi, Phantom Liberty sukses menarik kembali pemain lama yang ingin merasakan pengalaman berbeda di dunia Night City.\n\nDengan ekspansi ini, CD Projekt Red berhasil menjawab kritik dari peluncuran awal game yang sempat menuai kontroversi. Phantom Liberty bukan hanya sekadar tambahan konten, melainkan juga perbaikan menyeluruh yang membuat Cyberpunk 2077 terasa seperti game baru. Visual yang memukau dan narasi yang kuat memastikan bahwa pemain mendapatkan pengalaman maksimal dari ekspansi ini.',
                date: '22 Desember 2024',
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Berita Lain',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
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
                height: 30,
              ),
              InkWell(
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
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
