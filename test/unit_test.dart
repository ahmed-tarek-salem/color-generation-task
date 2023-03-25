import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_task_master/models/color_generator.dart';

void main() {
  test('Color generation testing', () {
    final randomColor = ColorGenerator.generateRandomColor();
    final red = randomColor.red;
    final green = randomColor.green;
    final blue = randomColor.blue;

    expect(red >= 0 && red <= ColorGenerator.maxColorIntensity, true);
    expect(green >= 0 && green <= ColorGenerator.maxColorIntensity, true);
    expect(blue >= 0 && blue <= ColorGenerator.maxColorIntensity, true);
  });
}
