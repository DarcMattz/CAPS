import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mathematics/number_card.dart';
import 'package:flutter_application_1/components/mathematics/number_with_example_card.dart';
import 'package:flutter_application_1/models/mathematics/number_example.dart';
import 'package:flutter_application_1/models/mathematics/number_only.dart';
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

  @override
  Widget build(BuildContext context) {
    final List<Widget> numberCards = [
      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/1_example.png',
            numberImage: 'assets/images/mathematics/1.png'),
        currentIndex: 0,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_1.png'),
        currentIndex: 1,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/2_example.png',
            numberImage: 'assets/images/mathematics/2.png'),
        currentIndex: 2,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_2.png'),
        currentIndex: 3,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/3_example.png',
            numberImage: 'assets/images/mathematics/3.png'),
        currentIndex: 4,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_3.png'),
        currentIndex: 5,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/4_example.png',
            numberImage: 'assets/images/mathematics/4.png'),
        currentIndex: 6,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_4.png'),
        currentIndex: 7,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/5_example.png',
            numberImage: 'assets/images/mathematics/5.png'),
        currentIndex: 8,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_5.png'),
        currentIndex: 9,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/6_example.png',
            numberImage: 'assets/images/mathematics/6.png'),
        currentIndex: 10,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_6.png'),
        currentIndex: 11,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/7_example.png',
            numberImage: 'assets/images/mathematics/7.png'),
        currentIndex: 12,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_7.png'),
        currentIndex: 13,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/8_example.png',
            numberImage: 'assets/images/mathematics/8.png'),
        currentIndex: 14,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_8.png'),
        currentIndex: 15,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/9_example.png',
            numberImage: 'assets/images/mathematics/9.png'),
        currentIndex: 16,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_9.png'),
        currentIndex: 17,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberWithExampleCard(
        number: NumberExample(
            numberExample: 'assets/images/mathematics/10_example.png',
            numberImage: 'assets/images/mathematics/10.png'),
        currentIndex: 18,
        totalNumbers: 30,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/trace_10.png'),
        currentIndex: 19,
        totalNumbers: 30,
        withSound: false,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/11.png'),
        currentIndex: 20,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/12.png'),
        currentIndex: 21,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/13.png'),
        currentIndex: 22,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/14.png'),
        currentIndex: 23,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/15.png'),
        currentIndex: 24,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/16.png'),
        currentIndex: 25,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/17.png'),
        currentIndex: 26,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/18.png'),
        currentIndex: 27,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/19.png'),
        currentIndex: 28,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),

      NumberCard(
        number: NumberOnly(numberImage: 'assets/images/mathematics/20.png'),
        currentIndex: 29,
        totalNumbers: 30,
        withSound: true,
        carCon: _carCon,
      ),
    ];

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
                      itemCount: numberCards.length,
                      itemBuilder: (context, index, realIndex) {
                        return numberCards[index];
                      },
                    ),
                    const Gap(30),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(numberCards.length, (index) {
                          return GestureDetector(
                            child: Container(
                              margin:
                              const EdgeInsets.symmetric(horizontal: 2.0),
                              width: 8,
                              height: 8,
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
