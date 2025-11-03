final class RateFormatter {
  static String formatRate({required double rate}) {
    if (rate < 1) {
      return rate.toStringAsFixed(4);
    }
    return rate.toStringAsFixed(2);
  }
}
