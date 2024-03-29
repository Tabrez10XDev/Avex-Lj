import 'package:flutter/material.dart';

import '../../theme/palette.dart';

class ColorElement extends StatelessWidget {
  final i;
  final color;
  final currentColor;
  const ColorElement({super.key, required Color this.color, required int this.i, this.currentColor});


  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: Duration(milliseconds: 200),
      child: SizedBox(
        width: 28,
        child: Center(
          child: SizedBox(
            width: i == currentColor ? 26: (20 - ((i-currentColor).abs() * 1.5)).toDouble(),
            height: i == currentColor ? 26 : (20 - ((i-currentColor).abs() * 1.5)).toDouble(),
            child: Container(
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(40)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
