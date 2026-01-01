import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    final CarouselSliderController _carouselController =
        CarouselSliderController();
    return Column(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 100.0,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              // setState(() {
              //   _currentIndex = index;
              // });
            },
          ),
          items: [1, 2, 3].map((i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(child: Text('Item $i')),
            );
          }).toList(),
        ),
        SizedBox(height: 8),

        // ~  Carousel Indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            final isActive = _currentIndex == index;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.5),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
                width: isActive ? 18 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: isActive
                      ? Color.fromRGBO(30, 89, 37, 1)
                      : const Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
