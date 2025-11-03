import 'package:flutter/material.dart';

import '../theme/colors/app_colors.dart';

/// Handle indicator para bottom sheets
///
/// Widget reutilizable que muestra el indicador visual en la parte
/// superior de los bottom sheets para indicar que se pueden arrastrar.
/// Usa el color global definido en AppColors.bottomSheetHandle.
final class BottomSheetHandle extends StatelessWidget {
  final double width;
  final double height;
  final double topMargin;

  const BottomSheetHandle({
    super.key,
    this.width = 40,
    this.height = 4,
    this.topMargin = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.bottomSheetHandle,
        borderRadius: BorderRadius.circular(height / 2),
      ),
    );
  }
}

