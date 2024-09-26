import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/nice_button.dart';
import 'package:flutter_application_1/components/sense_card.dart';
import 'package:flutter_application_1/models/sense.dart';
import 'package:gap/gap.dart';

class SensesScreen extends StatefulWidget {
  const SensesScreen({super.key});

  @override
  State<SensesScreen> createState() => _SensesScreenState();
}

class _SensesScreenState extends State<SensesScreen> {
  int _currentIndex = 0;
  final CarouselSliderController _carCon = CarouselSliderController();

  final List<Sense> senses = [
    Sense(
      label: 'Sense of Sight',
      imagePath: 'assets/images/science/senses/sense_1.png',
    ),
    Sense(
      label: 'Sense of Smell',
      imagePath: 'assets/images/science/senses/sense_2.png',
    ),
    Sense(
      label: 'Sense of Taste',
      imagePath: 'assets/images/science/senses/sense_3.png',
    ),
    Sense(
      label: 'Sense of Sound',
      imagePath: 'assets/images/science/senses/sense_4.png',
    ),
    Sense(
      label: 'Sense of Touch',
      imagePath: 'assets/images/science/senses/sense_5.png',
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
                      itemCount: senses.length,
                      itemBuilder: (context, index, realIndex) {
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    senses[index].label,
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              },
                            );
                          },
                          child: SenseCard(
                            sense: senses[index],
                            carCon: _carCon,
                            currentIndex: _currentIndex,
                            totalShapes: senses.length,
                          ),
                        );
                      },
                    ),
                    const Gap(30),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(senses.length, (index) {
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
