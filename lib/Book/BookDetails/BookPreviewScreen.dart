import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../Models/BookModel.dart';

class BookPreviewScreen extends StatefulWidget {
  final String previewUrl;
  final BookModel bookModel;

  const BookPreviewScreen({
    super.key,
    required this.previewUrl,
    required this.bookModel,
  });

  @override
  _BookPreviewScreenState createState() => _BookPreviewScreenState();
}

class _BookPreviewScreenState extends State<BookPreviewScreen> {
  late final WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    // Ensure WebView is initialized for mobile platforms
    if (kIsWeb) {
      // Handle web platform if necessary
    } else {
      // Initialize the web view controller
      _webViewController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(widget.previewUrl));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1B2E3A),
        centerTitle: true,
        title: Text(
          widget.bookModel.title!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            shadows: <Shadow>[
              Shadow(
                blurRadius: 3.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.preview_outlined),
          ),
        ],
        iconTheme: const IconThemeData(
          size: 25,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: WebViewWidget(
          controller: _webViewController,
          layoutDirection: TextDirection.ltr,
          gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
        ),
      ),
    );
  }
}
