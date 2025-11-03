/// Enumeración de todas las rutas de la aplicación
///
/// Cada ruta tiene un [path] y un [name] únicos.
/// El path es la URL de la ruta y el name es el identificador interno.
enum AppRoutes {
  /// Ruta principal - Calculadora
  calculator('/', 'calculator');

  const AppRoutes(this.path, this.name);
  
  /// Path de la ruta (usado en la URL)
  final String path;
  
  /// Nombre de la ruta (usado para navegación programática)
  final String name;
}

