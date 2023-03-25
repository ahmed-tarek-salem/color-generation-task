import 'dart:math';
import 'package:flutter/material.dart';

/// A utility class that generates random colors.
class ColorGenerator {
  /// The maximum intensity value for each color channel (red, green, blue).
  static const maxColorIntensity = 256;

  /// Generates a random color.
  ///
  /// Returns a [Color] object with randomly generated red, green, and blue
  /// values.
  static Color generateRandomColor() {
    return Color.fromRGBO(
      Random().nextInt(maxColorIntensity),
      Random().nextInt(maxColorIntensity),
      Random().nextInt(maxColorIntensity),
      1.0,
    );
  }
}
