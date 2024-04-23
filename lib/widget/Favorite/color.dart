import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final double size;

  const ColorDot({
    Key? key,
    required this.color,
    this.size = 32.0, // حجم افتراضي إذا لم يتم تحديد حجم
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: color, // اللون يتم تمريره كمعامل
          borderRadius:
              BorderRadius.circular(size / 2), // يجعل الحاوية دائرية تمامًا
          border: Border.all(
              color: Colors.white, width: 2), // إطار أبيض حول الدائرة
        ),
      ),
    );
  }
}
