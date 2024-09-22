import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/vowel.dart';

class VowelCard extends StatefulWidget {
  final Vowel vowel;
  final void Function() nextCallback;
  final void Function() prevCallback;

  const VowelCard({
    super.key,
    required this.nextCallback,
    required this.prevCallback,
    required this.vowel,
  });

  @override
  State<VowelCard> createState() => _VowelCardState();
}

class _VowelCardState extends State<VowelCard> {
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
                  // const Padding(
                  //   padding: EdgeInsets.only(top: 10.0, right: 10.0),
                  //   child: Icon(Icons.volume_up_rounded),
                  // ),
                  Expanded(
                    child: Center(
                      child: AutoSizeText(
                        widget.vowel.vowel,
                        style:
                            TextStyle(fontSize: 200, color: Colors.purple[700]),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image.asset(
                            widget.vowel.imagePath,
                            fit: BoxFit.contain,
                          ),
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
                  onPressed: widget.prevCallback,
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  widget.vowel.imageName,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.orange,
                  ),
                ),
                IconButton(
                  onPressed: widget.nextCallback,
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
