import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/care_card.dart';
import 'package:flutter_application_1/components/nice_button.dart';
import 'package:flutter_application_1/models/care.dart';
import 'package:gap/gap.dart';

class CareScreen extends StatefulWidget {
  const CareScreen({super.key});

  @override
  State<CareScreen> createState() => _CareScreenState();
}

class _CareScreenState extends State<CareScreen> {
  int _currentIndex = 0;
  final CarouselSliderController _carCon = CarouselSliderController();

  final List<Care> cares = [
    Care(
      description: 'Wake up early in the morning.',
      imagePath: 'assets/images/science/care/care_1.png',
    ),
    Care(
      description: 'Then, wash your face.',
      imagePath: 'assets/images/science/care/care_2.png',
    ),
    Care(
      description: 'Wash your hand before you eat.',
      imagePath: 'assets/images/science/care/care_3.png',
    ),
    Care(
      description: 'Eat healthy food.',
      imagePath: 'assets/images/science/care/care_4.png',
    ),
    Care(
      description: 'Brush your teeth after you eat.',
      imagePath: 'assets/images/science/care/care_5.png',
    ),
    Care(
      description: 'Always take a bath.',
      imagePath: 'assets/images/science/care/care_6.png',
    ),
    Care(
      description: 'Brush your hair.',
      imagePath: 'assets/images/science/care/care_7.png',
    ),
    Care(
      description: 'Clean your ears.',
      imagePath: 'assets/images/science/care/care_8.png',
    ),
    Care(
      description: 'Sleep early.',
      imagePath: 'assets/images/science/care/care_9.png',
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
                      itemCount: cares.length,
                      itemBuilder: (context, index, realIndex) {
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    cares[index].description,
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              },
                            );
                          },
                          child: CareCard(
                            care: cares[index],
                            carCon: _carCon,
                            currentIndex: _currentIndex,
                            totalShapes: cares.length,
                          ),
                        );
                      },
                    ),
                    const Gap(30),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(cares.length, (index) {
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
