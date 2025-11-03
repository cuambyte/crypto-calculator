import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/constants/string_constants.dart';
import '../features/calculator/presentation/screens/calculator_screen.dart';
import 'app_routes.dart';

/// Configuración de rutas de la aplicación usando GoRouter
final class AppRouter {
  /// Router principal de la aplicación
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: AppRoutes.calculator.path,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.calculator.path,
        name: AppRoutes.calculator.name,
        builder: (BuildContext context, GoRouterState state) {
          return const CalculatorScreen();
        },
      ),
    ],
    errorBuilder: (BuildContext context, GoRouterState state) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text(
                StringConstants.pageNotFound,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                state.uri.toString(),
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => context.go(AppRoutes.calculator.path),
                icon: const Icon(Icons.home),
                label: const Text(StringConstants.goToHome),
              ),
            ],
          ),
        ),
      );
    },
  );
}
