import 'package:flutter/material.dart';

/// A widget that displays the text "Hello there" with a black color
///  and a white shadow to make the text always apparent.
class HelloText extends StatelessWidget {
  /// Creates a [HelloText] widget.
  const HelloText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const shadow = Shadow(
      blurRadius: 5.0,
      color: Colors.white,
      offset: Offset.zero,
    );

    return const Text(
      'Hello there!',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.black,
        shadows: [shadow],
      ),
    );
  }
}
