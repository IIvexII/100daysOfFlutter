import 'package:flutter/material.dart';
import 'package:role_dice/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 18, 8, 111),
            Color.fromARGB(255, 31, 27, 150),
          ],
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
