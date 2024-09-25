import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/learning/mathematics/numbers.dart';
import '../../../components/start_card.dart';
import '../../../components/top_bar.dart';

class NumbersStartLessonOneScreen extends StatelessWidget {
  const NumbersStartLessonOneScreen({super.key});

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
              const TopBar(),
              const Expanded(
                child: StartCard(
                  imagePath: "assets/images/mathematics/math_start_mascot.png",
                  route: NumbersScreen(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: Image.asset(
                      'assets/images/rabbit.png',
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
