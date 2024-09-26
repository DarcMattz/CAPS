import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/finish_module_dialog.dart';
import 'package:flutter_application_1/models/sense.dart';
import 'package:flutter_application_1/screens/learning/all_aboard/shapes_quiz.dart';

class SenseCard extends StatefulWidget {
  final Sense sense;
  final CarouselSliderController? carCon;
  final int currentIndex;
  final int totalShapes;

  const SenseCard({
    super.key,
    required this.sense,
    this.carCon,
    required this.currentIndex,
    required this.totalShapes,
  });

  @override
  State<SenseCard> createState() => _SenseCardState();
}

class _SenseCardState extends State<SenseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 10.0,
                left: 10.0,
                right: 10.0,
              ),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: Text(
                  //     widget.sense.label,
                  //     style: TextStyle(
                  //       fontSize: 20.0,
                  //       color: Colors.purple[400],
                  //     ),
                  //   ),
                  // ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          widget.sense.imagePath,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    if (widget.carCon != null) {
                      widget.carCon!.previousPage();
                    }
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  widget.sense.label,
                  style: const TextStyle(
                    fontSize: 23,
                    color: Colors.orange,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (widget.currentIndex == widget.totalShapes - 1) {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => const FinishModuleDialog(
                          route: ShapesQuizScreen(),
                        ),
                      );
                    } else if (widget.carCon != null) {
                      widget.carCon!.nextPage();
                    }
                  },
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
