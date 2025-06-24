import 'package:chatbot_launcher/src/config/chatbot_config.dart';
import 'package:flutter/material.dart';
import 'chatbot_popup.dart';

class chatbotLauncher extends StatelessWidget {
  final chatbotConfig config;

  const chatbotLauncher({super.key, this.config = const chatbotConfig()});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      elevation: 0,
      backgroundColor: config.fabColor,
      onPressed: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) {
            return Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: config.headerColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(
                  top: config.topMargin,
                  left: 10,
                  right: 10,
                  bottom: 200,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - config.topMargin,
                child: chatbotPopup(
                  fabIconColor: config.fabIconColor,
                  headerColor: config.headerColor,
                  headerTitle: config.headerTitle,
                  headerSubtitle: config.headerSubtitle,
                  headerImage: config.headerIcon,
                  backgroundImage: config.backgroundImage,
                  poweredByText: config.poweredByText,
                  poweredByLogo: config.poweredByLogo,
                  poweredByBrand: config.poweredByBrand,
                  sendIconColor: config.sendIconColor,
                  hintTextColor: config.hintTextColor,
                ),
              ),
            );
          },
        );
      },
      child: Icon(Icons.chat_bubble, color: config.fabIconColor),
    );
  }
}
