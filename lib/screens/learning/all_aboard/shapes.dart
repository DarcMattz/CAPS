import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/finish_dialog.dart';
import 'package:flutter_application_1/components/lesson_card.dart';
import 'package:flutter_application_1/components/nice_button.dart';
import 'package:gap/gap.dart';

class ShapesScreen extends StatefulWidget {
  const ShapesScreen({super.key});

  @override
  State<ShapesScreen> createState() => _ShapesScreenState();
}

class _ShapesScreenState extends State<ShapesScreen> {
  int _currentIndex = 0;

  final List shapes = [
    const LessonCard(
      imagePath: 'assets/images/circle.png',
      cardTitle: 'Circle',
    ),
    const LessonCard(
      imagePath: 'assets/images/square.png',
      cardTitle: 'Square',
    ),
    const LessonCard(
      imagePath: 'assets/images/triangle.png',
      cardTitle: 'Triangle',
    ),
    const LessonCard(
      imagePath: 'assets/images/star.png',
      cardTitle: 'Star',
    ),
    const LessonCard(
      imagePath: 'assets/images/rectangle.png',
      cardTitle: 'Rectangle',
    ),
    const LessonCard(
      imagePath: 'assets/images/oval.png',
      cardTitle: 'Oval',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: NiceButton(
                      label: "Done",
                      color: const Color.fromARGB(255, 87, 210, 91),
                      shadowColor: Colors.green[800]!,
                      icon: Icons.check,
                      iconSize: 30,
                      route: () {
                        showDialog(
                          context: context,
                          builder: (context) => const FinishDialog(),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CarouselSlider.builder(
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
                      itemCount: shapes.length,
                      itemBuilder: (context, index, realIndex) {
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    shapes[index].cardTitle,
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              },
                            );
                          },
                          child: shapes[index],
                        );
                      },
                    ),
                    const Gap(30),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(shapes.length, (index) {
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

  void _showFinishedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('End of Carousel'),
          content: const Text('You have reached the end of the carousel.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
