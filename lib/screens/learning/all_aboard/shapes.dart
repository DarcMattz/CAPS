import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/nice_button.dart';
import 'package:flutter_application_1/components/shape_card.dart';
import 'package:flutter_application_1/models/shape.dart';
import 'package:gap/gap.dart';

class ShapesScreen extends StatefulWidget {
  const ShapesScreen({super.key});

  @override
  State<ShapesScreen> createState() => _ShapesScreenState();
}

class _ShapesScreenState extends State<ShapesScreen> {
  int _currentIndex = 0;
  final CarouselSliderController _carCon = CarouselSliderController();

  final List<Shape> shapes = [
    Shape(
      label: 'Circle',
      imagePath: 'assets/images/circle.png',
    ),
    Shape(
      label: 'Square',
      imagePath: 'assets/images/square.png',
    ),
    Shape(
      label: 'Triangle',
      imagePath: 'assets/images/triangle.png',
    ),
    Shape(
      label: 'Star',
      imagePath: 'assets/images/star.png',
    ),
    Shape(
      label: 'Rectangle',
      imagePath: 'assets/images/rectangle.png',
    ),
    Shape(
      label: 'Oval',
      imagePath: 'assets/images/oval.png',
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
                      itemCount: shapes.length,
                      itemBuilder: (context, index, realIndex) {
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    shapes[index].label,
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              },
                            );
                          },
                          child: ShapeCard(
                            shape: shapes[index],
                            carCon: _carCon,
                            currentIndex: _currentIndex,
                            totalShapes: shapes.length,
                          ),
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
}
