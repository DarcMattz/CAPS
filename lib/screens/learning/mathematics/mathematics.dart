import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/building.dart';
import 'package:flutter_application_1/components/nice_button.dart';
import 'package:flutter_application_1/screens/learning/mathematics/add_subtract.dart';
import 'package:flutter_application_1/screens/learning/mathematics/numbers_quiz.dart';
import 'package:flutter_application_1/screens/learning/mathematics/numbers_start_lesson_one.dart';
import 'package:flutter_application_1/screens/learning/mathematics/numbers_start_lesson_two.dart';

class MathematicsScreen extends StatefulWidget {
  const MathematicsScreen({super.key});

  @override
  State<MathematicsScreen> createState() => _MathematicsScreenState();
}

class _MathematicsScreenState extends State<MathematicsScreen> {
  int _currentIndex = 0;

  final List<Building> buildings = [
    const Building(
        module: "mathematics",
        imagePath: 'assets/images/mathematics/numbers.png',
        route: NumbersStartLessonOneScreen()),

    const Building(
        module: "mathematics",
        imagePath: 'assets/images/quiz_lock.png',
        route: NumbersQuizScreen()),

    const Building(
        module: "mathematics",
        imagePath: 'assets/images/mathematics/add_subtract.png',
        route: NumbersStartLessonTwoScreen()),

    const Building(
        module: "mathematics",
        imagePath: 'assets/images/quiz_lock.png',
        route: NumbersQuizScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.lightBlueAccent,
          image: DecorationImage(
            image: AssetImage('assets/images/background_road.png'),
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
                  icon: Icons.arrow_left_rounded,
                  iconSize: 45,
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
                      options: CarouselOptions(
                        height: 290,
                        enableInfiniteScroll: false,
                        initialPage: 0,
                        autoPlay: false,
                        viewportFraction: 0.7,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      itemCount: buildings.length,
                      itemBuilder: (context, index, realIndex) {
                        return buildings[index];
                      },
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(buildings.length, (index) {
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
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
