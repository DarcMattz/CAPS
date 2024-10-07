import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mathematics/number_card.dart';
import 'package:flutter_application_1/components/mathematics/number_with_example_card.dart';
import 'package:flutter_application_1/models/mathematics/number_example.dart';
import 'package:flutter_application_1/models/mathematics/number_only.dart';
import 'package:gap/gap.dart';
import '../../../components/utils/nice_button.dart';

class NumbersScreen extends StatefulWidget {
  const NumbersScreen({super.key});

  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  final CarouselSliderController _parentCarCon = CarouselSliderController();

  @override
  Widget build(BuildContext context) {

    final List<List> number = [
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/1_example.png',
            numberImage: 'assets/images/mathematics/1.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_1.png'),
      ],
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/1_example.png',
            numberImage: 'assets/images/mathematics/2.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_2.png'),
      ],
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/3_example.png',
            numberImage: 'assets/images/mathematics/3.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_3.png'),
      ],
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/4_example.png',
            numberImage: 'assets/images/mathematics/4.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_4.png'),
      ],
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/5_example.png',
            numberImage: 'assets/images/mathematics/5.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_5.png'),
      ],
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/6_example.png',
            numberImage: 'assets/images/mathematics/6.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_6.png'),
      ],
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/7_example.png',
            numberImage: 'assets/images/mathematics/7.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_7.png'),
      ],
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/8_example.png',
            numberImage: 'assets/images/mathematics/8.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_8.png'),
      ],
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/9_example.png',
            numberImage: 'assets/images/mathematics/9.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_9.png'),
      ],
      [
        NumberExample(
            numberExample: 'assets/images/mathematics/10_example.png',
            numberImage: 'assets/images/mathematics/10.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/trace_10.png'),
      ],
      [
        NumberOnly(numberImage: 'assets/images/mathematics/11.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/12.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/13.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/14.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/15.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/16.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/17.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/18.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/19.png'),
        NumberOnly(numberImage: 'assets/images/mathematics/20.png'),
      ],
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
                  itemCount: number.length,
                  options: CarouselOptions(
                      scrollDirection: Axis.vertical,
                      height: 500,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      initialPage: 0,
                      autoPlay: false,
                      viewportFraction: 0.8,),
                  itemBuilder: (context, colIndex, realIndex) {
                    final CarouselSliderController childCarCon =
                        CarouselSliderController();

                    return GestureDetector(
                      onTap: () {},
                      child: CarouselSlider.builder(
                        carouselController: childCarCon,
                        itemCount: number[colIndex].length,
                        options: CarouselOptions(
                            height: 400,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            initialPage: 0,
                            autoPlay: false,
                            viewportFraction: 0.8,),
                        itemBuilder: (context, rowIndex, cardRealIndex) {
                          if (colIndex <= 9 && rowIndex == 0) {
                            return NumberWithExampleCard(
                              number: number[colIndex][rowIndex],
                              colCurIndex: colIndex,
                              rowCurIndex: rowIndex,
                              parentCarCon: _parentCarCon,
                              childCarCon: childCarCon,
                            );
                          } else if (colIndex <= 9 && rowIndex > 0) {
                            return NumberCard(
                              number: number[colIndex][rowIndex],
                              withSound: false,
                              colCurIndex: colIndex,
                              rowCurIndex: rowIndex,
                              parentCarCon: _parentCarCon,
                              childCarCon: childCarCon,
                            );
                          } else {
                            return NumberCard(
                              number: number[colIndex][rowIndex],
                              withSound: false,
                              colCurIndex: colIndex,
                              rowCurIndex: rowIndex,
                              parentCarCon: _parentCarCon,
                              childCarCon: childCarCon,
                            );
                          }
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
