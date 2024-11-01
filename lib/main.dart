import 'package:flutter/material.dart';
import 'MyApp/MyApp.dart';

void main (){
  runApp(const MyApp());
}

/*
import 'package:flutter/material.dart';
import 'MyApp/MyApp.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main (){
  runApp(BookPreviewScreen());
  print('https://books.google.com.eg/books?id=uZmSEAAAQBAJ&pg=PA127&dq=general&hl=&cd=1&source=gbs_api#v=onepage&q=general&f=false');
}


class BookPreviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: WebView(
            initialUrl: 'https://books.google.com.eg/books?id=uZmSEAAAQBAJ&pg=PA127&dq=general&hl=&cd=1&source=gbs_api#v=onepage&q=general&f=false',
            javascriptMode: JavascriptMode.unrestricted,
            gestureNavigationEnabled: true,
          ),
        ),
      ),
    );
  }
}

 */