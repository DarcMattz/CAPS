import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/letter_card.dart';
import 'package:flutter_application_1/components/nice_button.dart';
import 'package:flutter_application_1/models/letter.dart';
import 'package:gap/gap.dart';

class AbcScreen extends StatefulWidget {
  const AbcScreen({super.key});

  @override
  State<AbcScreen> createState() => _AbcScreenState();
}

class _AbcScreenState extends State<AbcScreen> {
  int _currentIndex = 0;
  final CarouselSliderController _mainCarouselSliderController =
      CarouselSliderController();
  // final CarouselSliderController _nestedCarouselSliderController = CarouselSliderController();

  final List<Letter> letters = [
    Letter(
      samplePath: 'assets/images/letters/sample/LETTER_A.png',
      guidePath: 'assets/images/letters/sample/LETTER_A.png',
      imagePath: 'assets/images/letters/Aa.png',
    ),
    Letter(
      samplePath: 'assets/images/letters/sample/LETTER_B.png',
      guidePath: 'assets/images/letters/sample/LETTER_B.png',
      imagePath: 'assets/images/letters/Bb.png',
    ),
    Letter(
      samplePath: 'assets/images/letters/sample/LETTER_C.png',
      guidePath: 'assets/images/letters/sample/LETTER_C.png',
      imagePath: 'assets/images/letters/Cc.png',
    ),
    Letter(
      samplePath: 'assets/images/letters/sample/LETTER_D.png',
      guidePath: 'assets/images/letters/sample/LETTER_D.png',
      imagePath: 'assets/images/letters/Dd.png',
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
                      carouselController: _mainCarouselSliderController,
                      options: CarouselOptions(
                        scrollDirection: Axis.vertical,
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
                      itemCount: letters.length,
                      itemBuilder: (context, index, realIndex) {
                        return CarouselSlider.builder(
                          // carouselController: _nestedCarouselSliderController,
                          options: CarouselOptions(
                            height: 400,
                            // enlargeCenterPage: true,
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
                          itemCount: 3,
                          itemBuilder: (context, index, realIndex) {
                            return GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        letters[index].label,
                                        textAlign: TextAlign.center,
                                      ),
                                    );
                                  },
                                );
                              },
                              child: LetterCard(
                                letter: letters[index],
                                carCon: _mainCarouselSliderController,
                                currentIndex: _currentIndex,
                                totalShapes: letters.length,
                              ),
                            );
                          },
                        );
                      },
                    ),
                    const Gap(30),
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
