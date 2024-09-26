import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/finish_module_dialog.dart';
import 'package:flutter_application_1/components/nice_button.dart';
import 'package:flutter_application_1/components/vowel_card.dart';
import 'package:flutter_application_1/models/vowel.dart';
import 'package:flutter_application_1/screens/learning/all_aboard/abc_quiz.dart';
import 'package:gap/gap.dart';

class VowelsScreen extends StatefulWidget {
  const VowelsScreen({super.key});

  @override
  State<VowelsScreen> createState() => _VowelsScreenState();
}

class _VowelsScreenState extends State<VowelsScreen> {
  final CarouselSliderController _mainCarCon = CarouselSliderController();
  int colCurIndex = 0;

  final List<List<Vowel>> vowels = [
    [
      Vowel(
        vowel: 'Fa',
        imagePath: 'assets/images/vowels/fan.png',
        imageName: 'Fan',
      ),
      Vowel(
        vowel: 'Ca',
        imagePath: 'assets/images/vowels/cat.png',
        imageName: 'Cat',
      ),
      Vowel(
        vowel: 'La',
        imagePath: 'assets/images/vowels/lamp.png',
        imageName: 'Lamp',
      ),
      Vowel(
        vowel: 'Ma',
        imagePath: 'assets/images/vowels/mat.png',
        imageName: 'Mat',
      ),
      Vowel(
        vowel: 'Va',
        imagePath: 'assets/images/vowels/van.png',
        imageName: 'Van',
      ),
    ],
    [
      Vowel(
        vowel: 'Be',
        imagePath: 'assets/images/vowels/bed.png',
        imageName: 'Bed',
      ),
      Vowel(
        vowel: 'He',
        imagePath: 'assets/images/vowels/hen.png',
        imageName: 'Hen',
      ),
      Vowel(
        vowel: 'Pe',
        imagePath: 'assets/images/vowels/pen.png',
        imageName: 'Pen',
      ),
      Vowel(
        vowel: 'Ne',
        imagePath: 'assets/images/vowels/net.png',
        imageName: 'Net',
      ),
      Vowel(
        vowel: 'We',
        imagePath: 'assets/images/vowels/web.png',
        imageName: 'Web',
      ),
    ],
    [
      Vowel(
        vowel: 'Fi',
        imagePath: 'assets/images/vowels/fish.png',
        imageName: 'Fish',
      ),
      Vowel(
        vowel: 'Bi',
        imagePath: 'assets/images/vowels/bib.png',
        imageName: 'Bib',
      ),
      Vowel(
        vowel: 'Gi',
        imagePath: 'assets/images/vowels/gift.png',
        imageName: 'Gift',
      ),
      Vowel(
        vowel: 'Pi',
        imagePath: 'assets/images/vowels/pig.png',
        imageName: 'Pig',
      ),
      Vowel(
        vowel: 'Ri',
        imagePath: 'assets/images/vowels/ring.png',
        imageName: 'Ring',
      ),
    ],
    [
      Vowel(
        vowel: 'Co',
        imagePath: 'assets/images/vowels/cot.png',
        imageName: 'Cot',
      ),
      Vowel(
        vowel: 'Do',
        imagePath: 'assets/images/vowels/dog.png',
        imageName: 'Dog',
      ),
      Vowel(
        vowel: 'Ho',
        imagePath: 'assets/images/vowels/hog.png',
        imageName: 'Hog',
      ),
      Vowel(
        vowel: 'Po',
        imagePath: 'assets/images/vowels/pot.png',
        imageName: 'Pot',
      ),
      Vowel(
        vowel: 'To',
        imagePath: 'assets/images/vowels/top.png',
        imageName: 'Top',
      ),
    ],
    [
      Vowel(
        vowel: 'Bu',
        imagePath: 'assets/images/vowels/bus.png',
        imageName: 'Bus',
      ),
      Vowel(
        vowel: 'Gu',
        imagePath: 'assets/images/vowels/gum.png',
        imageName: 'Gum',
      ),
      Vowel(
        vowel: 'Hu',
        imagePath: 'assets/images/vowels/hut.png',
        imageName: 'Hut',
      ),
      Vowel(
        vowel: 'Nu',
        imagePath: 'assets/images/vowels/nut.png',
        imageName: 'Nut',
      ),
      Vowel(
        vowel: 'Su',
        imagePath: 'assets/images/vowels/sun.png',
        imageName: 'Sun',
      ),
    ],
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
                  icon: Icons.arrow_back,
                  iconSize: 25,
                  route: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: CarouselSlider.builder(
                  carouselController: _mainCarCon,
                  itemCount: vowels.length,
                  options: CarouselOptions(
                    scrollDirection: Axis.vertical,
                    height: 500,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    autoPlay: false,
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      colCurIndex = index;
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
                    final CarouselSliderController childCarCon =
                        CarouselSliderController();
                    int rowCurIndex = 0;

                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                vowels[colCurIndex][index].imageName,
                                textAlign: TextAlign.center,
                              ),
                            );
                          },
                        );
                      },
                      child: CarouselSlider.builder(
                        carouselController: childCarCon,
                        itemCount: vowels[index].length,
                        options: CarouselOptions(
                          height: 400,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          initialPage: 0,
                          autoPlay: false,
                          viewportFraction: 0.8,
                          onPageChanged: (index, reason) {
                            rowCurIndex = index;
                          },
                        ),
                        itemBuilder: (context, sampleIndex, sampleRealIndex) {
                          return VowelCard(
                            vowel: vowels[index][sampleIndex],
                            nextCallback: () {
                              if (colCurIndex == vowels.length - 1 &&
                                  rowCurIndex == 4) {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) =>
                                      const FinishModuleDialog(
                                    route: AbcQuizScreen(),
                                  ),
                                );
                              } else if (rowCurIndex == 4) {
                                _mainCarCon.nextPage();
                                childCarCon.animateToPage(0);
                              } else {
                                childCarCon.nextPage();
                              }
                            },
                            prevCallback: () {
                              if (rowCurIndex == 0) {
                                _mainCarCon.previousPage();
                              } else {
                                childCarCon.previousPage();
                              }
                            },
                          );
                        },
                      ),
                    );
                  },
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
