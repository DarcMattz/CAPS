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
  int colCurIndex = 0;
  int rowCurIndex = 0;
  final CarouselSliderController _parentCarCon = CarouselSliderController();
  final CarouselSliderController _childCarCon = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final List<List<Widget>> numberCards = [
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/1_example.png',
              numberImage: 'assets/images/mathematics/1.png'),
          currentIndex: 0,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 0,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_1.png'),
          currentIndex: 1,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 0,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/2_example.png',
              numberImage: 'assets/images/mathematics/2.png'),
          currentIndex: 2,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 1,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_2.png'),
          currentIndex: 3,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 1,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/3_example.png',
              numberImage: 'assets/images/mathematics/3.png'),
          currentIndex: 4,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 2,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_3.png'),
          currentIndex: 5,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 2,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/4_example.png',
              numberImage: 'assets/images/mathematics/4.png'),
          currentIndex: 6,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 3,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_4.png'),
          currentIndex: 7,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 3,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/5_example.png',
              numberImage: 'assets/images/mathematics/5.png'),
          currentIndex: 8,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 4,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_5.png'),
          currentIndex: 9,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 4,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/6_example.png',
              numberImage: 'assets/images/mathematics/6.png'),
          currentIndex: 10,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 5,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_6.png'),
          currentIndex: 11,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 5,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/7_example.png',
              numberImage: 'assets/images/mathematics/7.png'),
          currentIndex: 12,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 6,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_7.png'),
          currentIndex: 13,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 6,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/8_example.png',
              numberImage: 'assets/images/mathematics/8.png'),
          currentIndex: 14,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 7,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_8.png'),
          currentIndex: 15,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 7,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/9_example.png',
              numberImage: 'assets/images/mathematics/9.png'),
          currentIndex: 16,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 8,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_9.png'),
          currentIndex: 17,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 8,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberWithExampleCard(
          number: NumberExample(
              numberExample: 'assets/images/mathematics/10_example.png',
              numberImage: 'assets/images/mathematics/10.png'),
          currentIndex: 18,
          totalNumbers: 11,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 9,
          rowCurIndex: 0,
        ),
        NumberCard(
          number:
              NumberOnly(numberImage: 'assets/images/mathematics/trace_10.png'),
          currentIndex: 19,
          totalNumbers: 11,
          withSound: false,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 9,
          rowCurIndex: 1,
        ),
      ],
      [
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/11.png'),
          currentIndex: 20,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 0,
        ),
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/12.png'),
          currentIndex: 21,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 1,
        ),
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/13.png'),
          currentIndex: 22,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 2,
        ),
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/14.png'),
          currentIndex: 23,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 3,
        ),
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/15.png'),
          currentIndex: 24,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 4,
        ),
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/16.png'),
          currentIndex: 25,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 5,
        ),
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/17.png'),
          currentIndex: 26,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 6,
        ),
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/18.png'),
          currentIndex: 27,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 7,
        ),
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/19.png'),
          currentIndex: 28,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 8,
        ),
        NumberCard(
          number: NumberOnly(numberImage: 'assets/images/mathematics/20.png'),
          currentIndex: 29,
          totalNumbers: 11,
          withSound: true,
          parentCarCon: _parentCarCon,
          childCarCon: _childCarCon,
          colCurIndex: 10,
          rowCurIndex: 9,
        ),
      ]
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
                child: CarouselSlider.builder(
                  carouselController: _parentCarCon,
                  itemCount: numberCards.length,
                  options: CarouselOptions(
                    scrollDirection: Axis.vertical,
                    height: 500,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    autoPlay: false,
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      setState(() {
                        colCurIndex = index;
                      });
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
                    return GestureDetector(
                      onTap: () {},
                      child: CarouselSlider.builder(
                        carouselController: _childCarCon,
                        itemCount: numberCards[index].length,
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
                        itemBuilder: (context, cardIndex, cardRealIndex) {
                          return numberCards[index][cardIndex];
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
