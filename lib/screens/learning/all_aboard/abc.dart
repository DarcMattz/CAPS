import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/finish_module_dialog.dart';
import 'package:flutter_application_1/components/letter_card.dart';
import 'package:flutter_application_1/components/nice_button.dart';
import 'package:flutter_application_1/screens/learning/all_aboard/abc_quiz.dart';
import 'package:gap/gap.dart';

class AbcScreen extends StatefulWidget {
  const AbcScreen({super.key});

  @override
  State<AbcScreen> createState() => _AbcScreenState();
}

class _AbcScreenState extends State<AbcScreen> {
  final CarouselSliderController _mainCarCon = CarouselSliderController();
  int colCurIndex = 0;

  final List<List<String>> letters = [
    [
      'assets/images/letters/Aa.png',
      'assets/images/letters/sample/LETTER_A.png',
      'assets/images/letters/guide/A.png'
    ],
    [
      'assets/images/letters/Bb.png',
      'assets/images/letters/sample/LETTER_B.png',
      'assets/images/letters/guide/B.png'
    ],
    [
      'assets/images/letters/Cc.png',
      'assets/images/letters/sample/LETTER_C.png',
      'assets/images/letters/guide/C.png'
    ],
    [
      'assets/images/letters/Dd.png',
      'assets/images/letters/sample/LETTER_D.png',
      'assets/images/letters/guide/D.png'
    ],
    [
      'assets/images/letters/Ee.png',
      'assets/images/letters/sample/LETTER_E.png',
      'assets/images/letters/guide/E.png'
    ],
    [
      'assets/images/letters/Ff.png',
      'assets/images/letters/sample/LETTER_F.png',
      'assets/images/letters/guide/F.png'
    ],
    [
      'assets/images/letters/Gg.png',
      'assets/images/letters/sample/LETTER_G.png',
      'assets/images/letters/guide/G.png'
    ],
    [
      'assets/images/letters/Hh.png',
      'assets/images/letters/sample/LETTER_H.png',
      'assets/images/letters/guide/H.png'
    ],
    [
      'assets/images/letters/Ii.png',
      'assets/images/letters/sample/LETTER_I.png',
      'assets/images/letters/guide/I.png'
    ],
    [
      'assets/images/letters/Jj.png',
      'assets/images/letters/sample/LETTER_J.png',
      'assets/images/letters/guide/J.png'
    ],
    [
      'assets/images/letters/Kk.png',
      'assets/images/letters/sample/LETTER_K.png',
      'assets/images/letters/guide/K.png'
    ],
    [
      'assets/images/letters/Ll.png',
      'assets/images/letters/sample/LETTER_L.png',
      'assets/images/letters/guide/L.png'
    ],
    [
      'assets/images/letters/Mm.png',
      'assets/images/letters/sample/LETTER_M.png',
      'assets/images/letters/guide/M.png'
    ],
    [
      'assets/images/letters/Nn.png',
      'assets/images/letters/sample/LETTER_N.png',
      'assets/images/letters/guide/N.png'
    ],
    [
      'assets/images/letters/Oo.png',
      'assets/images/letters/sample/LETTER_O.png',
      'assets/images/letters/guide/O.png'
    ],
    [
      'assets/images/letters/Pp.png',
      'assets/images/letters/sample/LETTER_P.png',
      'assets/images/letters/guide/P.png'
    ],
    [
      'assets/images/letters/Qq.png',
      'assets/images/letters/sample/LETTER_Q.png',
      'assets/images/letters/guide/Q.png'
    ],
    [
      'assets/images/letters/Rr.png',
      'assets/images/letters/sample/LETTER_R.png',
      'assets/images/letters/guide/R.png'
    ],
    [
      'assets/images/letters/Ss.png',
      'assets/images/letters/sample/LETTER_S.png',
      'assets/images/letters/guide/S.png'
    ],
    [
      'assets/images/letters/Tt.png',
      'assets/images/letters/sample/LETTER_T.png',
      'assets/images/letters/guide/T.png'
    ],
    [
      'assets/images/letters/Uu.png',
      'assets/images/letters/sample/LETTER_U.png',
      'assets/images/letters/guide/U.png'
    ],
    [
      'assets/images/letters/Vv.png',
      'assets/images/letters/sample/LETTER_V.png',
      'assets/images/letters/guide/V.png'
    ],
    [
      'assets/images/letters/Ww.png',
      'assets/images/letters/sample/LETTER_W.png',
      'assets/images/letters/guide/W.png'
    ],
    [
      'assets/images/letters/Xx.png',
      'assets/images/letters/sample/LETTER_X.png',
      'assets/images/letters/guide/X.png'
    ],
    [
      'assets/images/letters/Yy.png',
      'assets/images/letters/sample/LETTER_Y.png',
      'assets/images/letters/guide/Y.png'
    ],
    [
      'assets/images/letters/Zz.png',
      'assets/images/letters/sample/LETTER_Z.png',
      'assets/images/letters/guide/Z.png'
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
                  itemCount: letters.length,
                  options: CarouselOptions(
                    scrollDirection: Axis.vertical,
                    height: 400,
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
                                letters[index].first,
                                textAlign: TextAlign.center,
                              ),
                            );
                          },
                        );
                      },
                      child: CarouselSlider.builder(
                        carouselController: childCarCon,
                        itemCount: letters[index].length,
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
                          return LetterCard(
                            label: "",
                            imagePath: letters[index][sampleIndex],
                            nextCallback: () {
                              if (colCurIndex == letters.length - 1 &&
                                  rowCurIndex == 2) {
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      const FinishModuleDialog(
                                    route: AbcQuizScreen(),
                                  ),
                                );
                              } else if (rowCurIndex == 2) {
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
