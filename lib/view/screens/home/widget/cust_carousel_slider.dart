import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gaming_marketplace_app/utils/assert_image.dart';

class CustCarouselSlider extends StatefulWidget {
  const CustCarouselSlider({super.key});

  @override
  State<CustCarouselSlider> createState() => _CustCarouselSliderState();
}

class _CustCarouselSliderState extends State<CustCarouselSlider> {
  final List<Widget> listSlider = [
    const Image(
      image: AssetImage(imgCarousel1),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage(imgCarousel2),
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.9,
        autoPlay: true,
        height: 160,
        initialPage: 0,
      ),
      items: listSlider.map(
        (sliderItem) {
          return Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: sliderItem,
                  ),
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }
}
