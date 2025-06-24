import 'package:flutter/material.dart';
import 'package:chatbot_launcher/chatbot.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chatbot Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("chatbot Example")),
        body: const Center(child: Text("Home Screen")),
        floatingActionButton: chatbotLauncher(
          config: chatbotConfig(
            fabColor: Colors.purple,
            headerTitle: "Hi! Need Help?",
            headerSubtitle: "Ask us anything — we’re here to help.",
            poweredByBrand: "AwesomeTech.AI",
            poweredByLogo: 'assets/logo.png',
          ),
        ),
      ),
    );
  }
}
