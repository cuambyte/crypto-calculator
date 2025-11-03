import 'package:flutter/material.dart';

import '../../theme/colors/app_colors.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primaryYellow
      ..style = PaintingStyle.fill;

    // Óvalo alto (más alto que ancho), corrido a la derecha y hacia arriba
    final centerX = size.width * 1.3; // empuja a la derecha
    final centerY = size.height * 0.40; // levanta hacia arriba
    final ovalWidth = size.width * 1.5; // más angosto
    final ovalHeight = size.height * 1.2; // ~alto de pantalla o un poco más

    final rect = Rect.fromCenter(
      center: Offset(centerX, centerY),
      width: ovalWidth,
      height: ovalHeight,
    );

    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
