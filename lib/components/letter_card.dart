import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/finish_module_dialog.dart';
import 'package:flutter_application_1/models/letter.dart';
import 'package:flutter_application_1/screens/learning/all_aboard/shapes_quiz.dart';

class LetterCard extends StatefulWidget {
  final Letter letter;
  final CarouselSliderController? carCon;
  final int currentIndex;
  final int totalShapes;

  const LetterCard({
    super.key,
    required this.letter,
    this.carCon,
    required this.currentIndex,
    required this.totalShapes,
  });

  @override
  State<LetterCard> createState() => _LetterCardState();
}

class _LetterCardState extends State<LetterCard> {
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, right: 10.0),
                    child: Icon(Icons.volume_up_rounded),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          widget.letter.imagePath,
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
                  widget.letter.label,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.orange,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (widget.currentIndex == widget.totalShapes - 1) {
                      showDialog(
                        context: context,
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
