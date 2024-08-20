import 'package:flutter/material.dart';

class Building {
  final String module;
  final String imagePath;
  final Widget route;

  Building(
      {required this.module, required this.imagePath, required this.route});
}

class BuildingCard extends StatelessWidget {
  final Building building;

  const BuildingCard({required this.building});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => building.route),
        );
      },
      child: Image.asset(
        building.imagePath,
      ),
    );
  }
}
