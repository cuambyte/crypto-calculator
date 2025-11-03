# 💱 Crypto Calculator Challenge

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.8.0+-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.8.0+-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Riverpod](https://img.shields.io/badge/Riverpod-3.0.3-5ECCAA?style=for-the-badge)
![Tests](https://img.shields.io/badge/Tests-Passing-success?style=for-the-badge)

**Una calculadora de criptomonedas moderna, escalable y pixel-perfect construida con Flutter**

[Características](#-características) • [Arquitectura](#-arquitectura) • [Instalación](#-instalación) • [Testing](#-testing)

</div>

---

## 🎥 Video Demo

<div align="center">

### Android

*[Espacio reservado para video demo Android]*

### iOS

*[Espacio reservado para video demo iOS]*

</div>

---

## ✨ Características

### 🎨 UI/UX Excellence
- **Pixel Perfect Implementation** - Diseño implementado con precisión absoluta
- **Animaciones Suaves** - Chevron animados y transiciones fluidas
- **Mejoras de UX** - Tasa de conversión mostrada (1 FIAT = X USDT) para mayor claridad
- **Tema Moderno** - Paleta de colores vibrante con modo oscuro nativo
- **Responsive Design** - Adaptable a diferentes tamaños de pantalla

### 🏗️ Arquitectura Robusta
- **Clean Architecture** - Separación clara en capas: Data, Domain, Presentation
- **Escalabilidad** - Preparado para crecer con nuevas features
- **SOLID Principles** - Código mantenible y de alta calidad
- **Gestión de Estado** - Riverpod 3.0 con code generation
- **Navegación Declarativa** - GoRouter para routing type-safe y deep linking

### 🛡️ Manejo de Errores Profesional
- **Validaciones Robustas** - Límites de monto, validaciones de entrada
- **Mensajes Amigables** - Errores claros y comprensibles para el usuario
- **Recuperación Elegante** - Manejo de errores de red y API
- **Estados Consistentes** - Loading, Error y Success states bien definidos

### ⚡ Optimizaciones Técnicas
- **Use Cases** - Lógica de negocio encapsulada y testeable
- **Providers Optimizados** - Mínimos rebuilds, máximo rendimiento
- **Code Generation** - Riverpod Generator y Freezed para código type-safe
- **Últimas Versiones** - Flutter 3.8+, Riverpod 3.0, Dio 5.9

### 🧪 Testing & Calidad
- **11 Unit Tests** - Cobertura completa de lógica crítica
- **100% de Éxito** - Todos los tests pasan correctamente
- **Validaciones Testeadas** - ValidateExchangeAmountUseCase
- **Cálculos Testeados** - CalculateCryptoExchangeUseCase

---

## 🏛️ Arquitectura

El proyecto sigue **Clean Architecture** con tres capas bien definidas:

```
lib/
├── src/
│   ├── core/                          # Recursos compartidos
│   │   ├── constants/                 # Strings, validaciones, colores
│   │   ├── theme/                     # Temas y estilos
│   │   ├── utils/                     # Utilidades y helpers
│   │   └── widgets/                   # Widgets reutilizables
│   │
│   └── features/
│       └── calculator/
│           ├── data/                  # Capa de Datos
│           │   ├── datasources/       # API & Local data
│           │   └── repositories/      # Implementaciones
│           │
│           ├── domain/                # Capa de Dominio
│           │   ├── entities/          # Modelos de negocio
│           │   ├── repositories/      # Contratos
│           │   └── usecases/          # Lógica de negocio
│           │
│           └── presentation/          # Capa de Presentación
│               ├── providers/         # Riverpod providers
│               ├── screens/           # Pantallas
│               ├── states/            # Estados
│               └── widgets/           # UI components
```

### 📦 Paquetes Principales

| Paquete | Versión | Propósito |
|---------|---------|-----------|
| `flutter_riverpod` | 3.0.3 | Gestión de estado reactiva |
| `riverpod_annotation` | 3.0.3 | Code generation para providers |
| `dio` | 5.9.0 | Cliente HTTP robusto |
| `freezed` | 3.2.3 | Modelos inmutables |
| `flutter_svg` | 2.2.1 | Renderizado de SVG |
| `go_router` | 16.3.0 | Navegación declarativa y deep linking |

---

## 🚀 Instalación

### Prerequisitos

- Flutter SDK: `>= 3.8.0`
- Dart SDK: `>= 3.8.0`

### Pasos

1. **Clonar el repositorio**
```bash
git clone https://github.com/tu-usuario/crypto-calculator.git
cd crypto-calculator
```

2. **Instalar dependencias**
```bash
flutter pub get
```

3. **Generar código**
```bash
dart run build_runner build --delete-conflicting-outputs
```

4. **Ejecutar la app**
```bash
flutter run
```

### Ejecutar Tests

```bash
flutter test
```

---

## 🎯 Decisiones Técnicas

### ¿Por qué Clean Architecture?
- ✅ Facilita el testing
- ✅ Código desacoplado y mantenible
- ✅ Preparado para escalar
- ✅ Independencia de frameworks

### ¿Por qué Riverpod?
- ✅ Type-safe y compile-time
- ✅ Sin context necesario
- ✅ Code generation
- ✅ Performance optimizado

### ¿Por qué Unit Testing?
- ✅ Valida lógica crítica del negocio
- ✅ Rápido de ejecutar
- ✅ Detecta regresiones temprano
- ✅ Documenta comportamiento esperado

---

## 🔮 Mejoras Futuras

- [ ] Tests de integración E2E
- [ ] Persistencia local con Hive/SQLite
- [ ] Soporte multi-idioma (i18n)
- [ ] Más criptomonedas y fiat
- [ ] Historial de conversiones
- [ ] Modo offline con cache

<div align="center">

⭐ Si te gustó este proyecto, dale una estrella

</div>
