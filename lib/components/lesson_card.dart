import 'package:flutter/material.dart';

class LessonCard extends StatefulWidget {
  final Widget content;
  final String label;
  final VoidCallback onNext;
  final VoidCallback onPrevious;

  const LessonCard(
      {super.key,
      required this.content,
      required this.label,
      required this.onNext,
      required this.onPrevious});

  @override
  State<LessonCard> createState() => _LessonCardState();
}

class _LessonCardState extends State<LessonCard> {
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
            child: widget.content
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: widget.onPrevious,
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  widget.label,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Color(0xFF6F53FD),
                  ),
                ),
                IconButton(
                  onPressed: widget.onNext,
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
