import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/modules.dart';

class ModuleListScreen extends StatelessWidget {
  final List<Module> modules = [
    Module(title: "All aboard", imagePath: 'assets/images/all_aboard.png'),
    Module(title: "Phonics", imagePath: 'assets/images/phonics.png'),
    Module(
        title: "Science & Health",
        imagePath: 'assets/images/science_and_health.png'),
    Module(title: "Mathematics", imagePath: 'assets/images/mathematics.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.lightBlueAccent,
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                label: Text('Back'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Expanded(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 320,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  autoPlay: false,
                  viewportFraction: 0.7,
                ),
                itemCount: modules.length,
                itemBuilder: (context, index, realIndex) {
                  return ModuleCard(module: modules[index]);
                },
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(modules.length, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  );
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, right: 30),
                  child: Image.asset(
                    'assets/images/panda.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
