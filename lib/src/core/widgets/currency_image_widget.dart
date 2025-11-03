import 'package:flutter/material.dart';

/// Widget reutilizable para mostrar imágenes de monedas con fallback
///
/// Este widget encapsula la lógica de carga de imágenes de assets
/// con un fallback elegante en caso de error.
final class CurrencyImageWidget extends StatelessWidget {
  final String assetPath;
  final double size;
  final double borderRadius;

  const CurrencyImageWidget({
    super.key,
    required this.assetPath,
    this.size = 40,
    this.borderRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(
        assetPath,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: theme.colorScheme.outline.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Icon(
              Icons.currency_exchange,
              size: size * 0.6,
              color: theme.colorScheme.outline,
            ),
          );
        },
      ),
    );
  }
}

