import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/mathematics/number.dart';

import '../../screens/learning/all_aboard/shapes_quiz.dart';
import '../finish_module_dialog.dart';

class NumbersCard extends StatefulWidget {
  final Number number;
  final CarouselSliderController? carCon;
  final int currentIndex;
  final int totalNumbers;

  const NumbersCard({
    super.key,
    required this.number,
    this.carCon,
    required this.currentIndex,
    required this.totalNumbers,
  });

  @override
  State<NumbersCard> createState() => _NumbersCardState();
}

class _NumbersCardState extends State<NumbersCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.all(10),
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
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          widget.number.numberImage,
                          fit: BoxFit.contain,
                          width: double.infinity,
                        ),
                      ),

                    Positioned(
                      right: 0,
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.volume_down_rounded, size: 30.0,)
                      ),
                    ),
                  ]
              ),
            ),
          ),

          const SizedBox(height: 10,),

          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  widget.number.numberExample,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

                IconButton(
                  onPressed: () {
                    if(widget.currentIndex > 0) {
                      widget.carCon!.previousPage();
                    }
                  },
                  icon: const Icon(Icons.arrow_back),
                ),

                IconButton(
                  onPressed: () {
                    if (widget.currentIndex == widget.totalNumbers - 1) {
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
        ],
      ),
    );
  }
}
