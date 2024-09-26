import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/mathematics/number_example.dart';
import 'package:flutter_application_1/screens/learning/mathematics/numbers_quiz.dart';
import '../finish_module_dialog.dart';
import '../utils/circle_button.dart';

class NumberWithExampleCard extends StatefulWidget {
  final NumberExample number;
  final CarouselSliderController? parentCarCon, childCarCon;
  final int currentIndex, totalNumbers, rowCurIndex, colCurIndex;

  const NumberWithExampleCard({
    super.key,
    required this.number,
    this.parentCarCon,
    this.childCarCon,
    required this.currentIndex,
    required this.totalNumbers,
    required this.colCurIndex,
    required this.rowCurIndex,
  });

  @override
  State<NumberWithExampleCard> createState() => _NumberWithExampleCardState();
}

class _NumberWithExampleCardState extends State<NumberWithExampleCard> {
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
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    widget.number.numberImage,
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  right: 5.0,
                  top: 5.0,
                  child: CircleButton(
                      color: Colors.purpleAccent,
                      shadowColor: Colors.purple,
                      icon: Icons.volume_up_rounded,
                      method: () {}),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if(widget.currentIndex > 0)
                const CircleButton(
                  color: Colors.amberAccent,
                  shadowColor: Colors.amber,
                  icon: Icons.arrow_back_rounded,
                ),
                const SizedBox(height: 10.0, width: 10.0,),
              
              const CircleButton(
                color: Colors.amberAccent,
                shadowColor: Colors.amber,
                icon: Icons.arrow_forward_rounded,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
