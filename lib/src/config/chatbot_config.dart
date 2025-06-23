library;

import 'package:chatbot/src/utils/chatbot_theme.dart';
import 'package:flutter/material.dart';

class ChatbotConfig {
  /// Margin from the top of the screen when the popup appears.
  final double topMargin;

  /// Color of the floating action button.
  final Color fabColor;

  /// Icon color inside the FAB.
  final Color fabIconColor;

  /// Header background color.
  final Color headerColor;

  /// Title text in the header.
  final String headerTitle;

  /// Subtitle text in the header.
  final String headerSubtitle;

  /// Optional image/icon in the header.
  final String? headerIcon;

  /// Optional background image for the popup.
  final String? backgroundImage;

  /// Label before powered-by branding.
  final String poweredByText;

  /// Optional logo for powered-by section.
  final String? poweredByLogo;

  /// Brand name shown in the powered-by section.
  final String poweredByBrand;

  /// Color of the send icon in the chat input.
  final Color sendIconColor;

  /// Color of the hint text in the chat input.
  final Color hintTextColor;

  const ChatbotConfig({
    this.topMargin = 100.0,
    this.fabColor = ChatbotTheme.fabColor,
    this.fabIconColor = ChatbotTheme.headerOverlayColor,
    this.headerColor = ChatbotTheme.headerOverlayColor,
    this.headerTitle = "Hello there! 👋",
    this.headerSubtitle = "Glad you’re here. Feel free to ask us anything.",
    this.headerIcon,
    this.backgroundImage,
    this.poweredByText = "POWERED BY",
    this.poweredByLogo,
    this.poweredByBrand = "SourceBytes.AI",
    this.sendIconColor = ChatbotTheme.sendIconColor,
    this.hintTextColor = ChatbotTheme.hintTextColor,
  });
}
