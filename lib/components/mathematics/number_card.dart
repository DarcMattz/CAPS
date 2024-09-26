import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/finish_module_dialog.dart';
import 'package:flutter_application_1/components/utils/circle_button.dart';
import 'package:flutter_application_1/models/mathematics/number_only.dart';
import 'package:flutter_application_1/screens/learning/mathematics/numbers_quiz.dart';

class NumberCard extends StatefulWidget {
  final NumberOnly number;
  final CarouselSliderController? parentCarCon, childCarCon;
  final int currentIndex, totalNumbers, rowCurIndex, colCurIndex;
  final bool withSound;

  const NumberCard({
    super.key,
    required this.number,
    this.parentCarCon,
    this.childCarCon,
    required this.currentIndex,
    required this.totalNumbers,
    required this.withSound,
    required this.colCurIndex,
    required this.rowCurIndex,
  });

  @override
  State<NumberCard> createState() => _NumberCardState();
}

class _NumberCardState extends State<NumberCard> {
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
                Container(
                  padding: const EdgeInsets.all(30.0),
                  height: double.infinity,
                  child: Image.asset(
                    widget.number.numberImage,
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                ),
                if (widget.withSound)
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.currentIndex > 0)
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
