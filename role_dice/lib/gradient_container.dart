import 'package:flutter/material.dart';
import 'package:role_dice/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: const Center(
        child: StyledText(data: "#100DaysOfFlutter"),
      ),
    );
  }
}
