import 'package:flutter/material.dart';

class ChatbotTheme {
  // 🔸 Colors
  static const Color fabColor = Color(0xffF5F4F4);
  static const Color headerOverlayColor = Colors.deepOrange;
  static const Color sendIconColor = Colors.deepOrange;
  static const Color hintTextColor = Color(0xFFB1B0B0);
  static const Color poweredByTextColor = Color(0xFFC4C4C4);
  static final Color poweredByBorderColor = Colors.grey.shade100;
  static final Color poweredByLabelColor = Colors.grey.shade300;

  // 🔸 Text Styles
  static const TextStyle headerTitleStyle = TextStyle(
    fontSize: 24,
    color: Colors.white,
  );

  static const TextStyle headerSubtitleStyle = TextStyle(
    fontSize: 16,
    color: Colors.white70,
  );

  static const TextStyle chatHintStyle = TextStyle(color: hintTextColor);

  static const TextStyle chatTitleStyle = TextStyle(fontSize: 17);

  static const TextStyle poweredByTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: poweredByTextColor,
  );

  static const TextStyle faqStyle = TextStyle(fontSize: 16);

  // 🔸 Paddings and Margins
  static const EdgeInsets screenPadding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 50,
  );

  static const EdgeInsets bubblePadding = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 5,
  );

  static const EdgeInsets poweredByPadding = EdgeInsets.all(10);

  static const EdgeInsets suggestionPadding = EdgeInsets.symmetric(
    horizontal: 20,
  );

  static const EdgeInsets suggestionInnerPadding = EdgeInsets.all(12);

  // 🔸 Border Radius
  static const BorderRadius containerRadius = BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  );

  static const BorderRadius bottomRadius = BorderRadius.only(
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
  );
}
