import 'package:flutter/material.dart';

class NiceButton extends StatefulWidget {
  final double height;
  final double width;
  final double fontSize;
  final String label;
  final Color color;
  final Color shadowColor;
  final IconData icon;
  final double iconSize;
  final VoidCallback? route;

  const NiceButton({
    super.key,
    this.height = 44,
    this.width = 100,
    this.fontSize = 20,
    required this.label,
    required this.color,
    required this.shadowColor,
    required this.icon,
    required this.iconSize,
    this.route,
  });

  @override
  State<NiceButton> createState() => _NiceButtonState();
}

class _NiceButtonState extends State<NiceButton> {
  static const double _shadowHeight = 4;
  double _position = 4;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (_) {
        setState(() {
          _position = 4;
        });
        if (widget.route != null) {
          widget.route!();
        }
      },
      onTapDown: (_) {
        setState(() {
          _position = 0;
        });
      },
      onTapCancel: () {
        setState(() {
          _position = 4;
        });
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: SizedBox(
            height: widget.height + _shadowHeight,
            width: widget.width,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: widget.height,
                    width: widget.width,
                    decoration: BoxDecoration(
                      color: widget.shadowColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: _position,
                  child: Container(
                    height: widget.height,
                    width: widget.width,
                    decoration: BoxDecoration(
                      color: widget.color,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          widget.icon,
                          size: widget.iconSize,
                          color: Colors.white,
                          shadows: const [
                            Shadow(
                              blurRadius: 1.0,
                              color: Colors.black,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                        ),
                        Text(
                          widget.label,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: widget.fontSize,
                            shadows: const [
                              Shadow(
                                blurRadius: 1.0,
                                color: Colors.black,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
