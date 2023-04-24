import 'package:dice/styled_text.dart';
import 'package:flutter/material.dart';

import 'dice_roller.dart';

var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key,required this.colors});

//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText(),
//       ),
//     );
//   }
// }
