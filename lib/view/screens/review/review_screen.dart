import 'package:flutter/material.dart';

import '../../../utils/assert_image.dart';
import '../product/widget/cust_review_item.dart';
import 'widget/cust_rating_distribution_chart.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
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
          'Review Produk',
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
            child: Row(
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
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustRatingDistributionChart(
                averageRating: 4.9,
                totalReviews: 182,
                ratings: {
                  5: 170,
                  4: 10,
                  3: 2,
                  2: 0,
                  1: 0,
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustReviewItem(
                    imageProfilUser: AssetImage(imgProfilUser1),
                    name: 'Anisa Rahman',
                    rating: 4,
                    reviews:
                        'Kontrolernya nyaman dipakai lama, baterainya awet, dan sensor geraknya responsif. Pairing awal agak lambat.',
                    date: '2 Minggu yang lalu',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustReviewItem(
                    imageProfilUser: AssetImage(imgProfilUser2),
                    name: 'Cristopher Devin',
                    rating: 3,
                    reviews:
                        'Desainnya bagus, tapi koneksi wireless di PC kadang lag. Tombol-tombolnya kurang kokoh.',
                    date: '1 Bulan yang lalu',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustReviewItem(
                    imageProfilUser: AssetImage(imgProfilUser3),
                    name: 'Fajar Pratama',
                    rating: 4,
                    reviews:
                        'Desainnya bagus, tapi koneksi wireless di PC kadang lag. Tombol-tombolnya kurang kokoh.',
                    date: '2 Bulan yang lalu',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustReviewItem(
                    imageProfilUser: AssetImage(imgProfilUser4),
                    name: 'Arya Nugraha',
                    rating: 5,
                    reviews:
                        'Kontroler ini luar biasa! Nyaman di tangan, baterai sangat tahan lama, dan koneksi wireless stabil. Cocok untuk PS4 maupun PC.',
                    date: '2 Bulan yang lalu',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustReviewItem(
                    imageProfilUser: AssetImage(imgProfilUser5),
                    name: 'Rizky Ramadhan',
                    rating: 5,
                    reviews:
                        'Sangat puas dengan kontroler ini. Sensor geraknya responsif, baterai awet, dan desainnya terlihat elegan. Wajib punya untuk gamer!',
                    date: '3 Bulan yang lalu',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
