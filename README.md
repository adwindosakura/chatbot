# 🧠 Flutter Chatbot Package

A lightweight, customizable chatbot launcher widget for Flutter apps. Launch your chatbot with a floating action button and provide a delightful, branded chat experience.

---

## ✨ Features

* 🟢 Easy integration — just plug and play
* 🎨 Fully customizable header, footer, and chat UI
* 🧱 Configurable using `ChatbotConfig` object
* 🖼️ Add custom icons, images, colors, and text
* ⚡ Launch with a Floating Action Button
* 💬 Built-in layout for chatbot popup window
* ⚖️ Minimal dependencies and ready to theme

---

## 📆 Getting Started

### 1. Add Dependency

In your `pubspec.yaml`:

```yaml
dependencies:
  chatbot: ^1.0.0
```

Then run:

```bash
flutter pub get
```

---

## 🛠️ Usage

### Basic Integration

```dart
import 'package:flutter/material.dart';
import 'package:chatbot/chatbot.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatbot Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("Chatbot Example")),
        body: const Center(child: Text("Home Screen")),
        floatingActionButton: ChatbotLauncher(
          config: ChatbotConfig(
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
```

---

## ⚙️ Configuration

Use `ChatbotConfig` to customize everything:

```dart
ChatbotConfig(
  topMargin: 80.0,
  fabColor: Colors.blueAccent,
  fabIconColor: Colors.white,
  headerColor: Colors.white,
  headerTitle: "Hello!",
  headerSubtitle: "We’re here to support you.",
  headerIcon: 'assets/header_icon.png',
  backgroundImage: 'assets/background.png',
  poweredByText: "POWERED BY",
  poweredByLogo: 'assets/logo.png',
  poweredByBrand: "YourBrand.AI",
  sendIconColor: Colors.blue,
  hintTextColor: Colors.grey,
)
```

---

## 🖼️ Example Screenshots (optional)

<!-- Add screenshots or screen recordings if available -->

<p float="left">
  <img src="https://via.placeholder.com/200x400.png?text=FAB" width="200">
  <img src="https://via.placeholder.com/200x400.png?text=Popup+UI" width="200">
</p>

---

## 📂 Example Project

You can find a full working demo in the [`example/`](example/) folder.

To run it:

```bash
cd example
flutter run
```

---

## 📚 API Reference

| Property          | Type      | Description                               |
| ----------------- | --------- | ----------------------------------------- |
| `fabColor`        | `Color`   | FAB background color                      |
| `fabIconColor`    | `Color`   | FAB icon color                            |
| `headerTitle`     | `String`  | Title at the top of the chatbot popup     |
| `headerSubtitle`  | `String`  | Subtitle text below the header title      |
| `headerIcon`      | `String?` | Optional header icon asset path           |
| `backgroundImage` | `String?` | Optional background image asset path      |
| `poweredByText`   | `String`  | Text shown before brand logo              |
| `poweredByLogo`   | `String?` | Optional brand logo asset path            |
| `poweredByBrand`  | `String`  | Brand name displayed in footer            |
| `sendIconColor`   | `Color`   | Color of the send button icon             |
| `hintTextColor`   | `Color`   | Color of the hint text in the input field |
| `topMargin`       | `double`  | Top margin for the popup dialog           |

---

## 🤝 Contributing

Contributions are welcome! Feel free to:

* Fork the repo
* Open issues or feature requests
* Submit pull requests with improvements

Please follow standard Flutter/Dart conventions and keep PRs focused.

---

## 🗞️ License

MIT License

```
MIT License

Copyright (c) 2025 [Your Name]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## 🌐 Links

* [Flutter Packages Guide](https://flutter.dev/docs/development/packages-and-plugins/developing-packages)
* [Pub.dev Package Publishing](https://dart.dev/tools/pub/publishing)

---

> 💡 **Pro Tip:** Keep your README in sync with code changes and API updates for a smooth developer experience.
