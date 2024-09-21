import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mathematics/numbers_card.dart';
import 'package:flutter_application_1/models/mathematics/number.dart';
import 'package:gap/gap.dart';
import '../../../components/nice_button.dart';

class NumbersScreen extends StatefulWidget {
  const NumbersScreen({super.key});

  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  int _currentIndex = 0;
  final CarouselSliderController _carCon = CarouselSliderController();

  final List<Number> numbers = [
    Number(
        numberExample: 'assets/images/mathematics/1_example.png',
        numberImage: 'assets/images/mathematics/1.png'
    ),
    Number(
        numberExample: 'assets/images/mathematics/2_example.png',
        numberImage: 'assets/images/mathematics/2.png'
    ),
    Number(
        numberExample: 'assets/images/mathematics/3_example.png',
        numberImage: 'assets/images/mathematics/3.png'
    ),
    Number(
        numberExample: 'assets/images/mathematics/4_example.png',
        numberImage: 'assets/images/mathematics/4.png'
    ),
    Number(
        numberExample: 'assets/images/mathematics/5_example.png',
        numberImage: 'assets/images/mathematics/5.png'
    ),
    Number(
        numberExample: 'assets/images/mathematics/6_example.png',
        numberImage: 'assets/images/mathematics/6.png'
    ),
    Number(
        numberExample: 'assets/images/mathematics/7_example.png',
        numberImage: 'assets/images/mathematics/7.png'
    ),
    Number(
        numberExample: 'assets/images/mathematics/8_example.png',
        numberImage: 'assets/images/mathematics/8.png'
    ),
    Number(
        numberExample: 'assets/images/mathematics/9_example.png',
        numberImage: 'assets/images/mathematics/9.png'
    ),
    Number(
        numberExample: 'assets/images/mathematics/10_example.png',
        numberImage: 'assets/images/mathematics/10.png'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: NiceButton(
                  label: "Back",
                  color: Colors.yellow,
                  shadowColor: Colors.yellow[800]!,
                  icon: Icons.close,
                  iconSize: 30,
                  route: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CarouselSlider.builder(
                      carouselController: _carCon,
                      options: CarouselOptions(
                        height: 400,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        initialPage: 0,
                        autoPlay: false,
                        viewportFraction: 0.8,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      itemCount: numbers.length,
                      itemBuilder: (context, index, realIndex) {
                        return NumbersCard(
                              number: numbers[index],
                              carCon: _carCon,
                              currentIndex: _currentIndex,
                              totalNumbers: numbers.length,
                        );
                      },
                    ),
                    const Gap(30),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(numbers.length, (index) {
                          return GestureDetector(
                            child: Container(
                              margin:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? Colors.blueAccent
                                    : Colors.grey,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: Image.asset(
                      'assets/images/dog.png',
                      height: 170,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
