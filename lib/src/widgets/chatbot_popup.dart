import 'package:chatbot_launcher/src/utils/chatbot_assets.dart';
import 'package:chatbot_launcher/src/utils/chatbot_theme.dart';
import 'package:flutter/material.dart';

class chatbotPopup extends StatefulWidget {
  final Color headerColor;
  final String headerTitle;
  final String headerSubtitle;
  final String? headerImage;
  final String? backgroundImage;
  final String poweredByText;
  final String? poweredByLogo;
  final String poweredByBrand;
  final Color sendIconColor;
  final Color hintTextColor;
  final Color fabIconColor;

  const chatbotPopup({
    super.key,
    this.headerColor = chatbotTheme.headerOverlayColor,
    this.fabIconColor = chatbotTheme.headerOverlayColor,
    this.headerTitle = "Hello there! 👋",
    this.headerSubtitle = "Glad you’re here. Feel free to ask us anything.",
    this.headerImage,
    this.backgroundImage,
    this.poweredByText = "POWERED BY",
    this.poweredByLogo,
    this.poweredByBrand = "SourceBytes.AI",
    this.sendIconColor = chatbotTheme.sendIconColor,
    this.hintTextColor = chatbotTheme.hintTextColor,
  });

  @override
  State<chatbotPopup> createState() => _chatbotPopupState();
}

class _chatbotPopupState extends State<chatbotPopup> {
  final List<String> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _messages.add("🧑: $text");
      _messages.add("🤖: You said \"$text\"");
    });

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      widget.backgroundImage ?? chatbotAssets.defaultBackground,
                      package: 'chatbot',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: widget.headerColor.withAlpha((0.8 * 255).toInt()),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          widget.headerImage ?? chatbotAssets.defaultLogo,
                          package: 'chatbot',
                          height: 40,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          widget.headerTitle,
                          style: chatbotTheme.headerTitleStyle,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.headerSubtitle,
                          style: chatbotTheme.headerSubtitleStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // 🟠 White Bottom Section
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 60),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.shade100,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Expanded(
                            child: Text(
                              'I have a question about the product?',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.arrow_right_sharp),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          border: Border.all(
                            color: Colors.grey.shade100,
                            width: 1.0,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.poweredByText,
                              style: TextStyle(color: Colors.grey.shade300),
                            ),
                            Image.asset(
                              widget.poweredByLogo ??
                                  chatbotAssets.defaultPoweredByLogo,
                              package: 'chatbot',
                              height: 30,
                            ),
                            Text(
                              widget.poweredByBrand,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 196, 196, 196),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        // 💬 TextField Positioned in the middle
        Positioned(
          top: 200,
          left: 16,
          right: 16,
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Chat with us',
                          style: TextStyle(fontSize: 17),
                        ),
                        TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: "We reply immediately",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: widget.hintTextColor),
                          ),
                          onSubmitted: (_) => _sendMessage(),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.send,
                      size: 35,
                      color: widget.sendIconColor,
                    ),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
