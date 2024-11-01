import 'package:flutter/material.dart';
import '../Models/BookModel.dart';
import 'BuildWidget/AboutBook.dart';
import 'BuildWidget/BookShow.dart';
import 'BuildWidget/Description.dart';

class BookDetailsComponent extends StatelessWidget{
  BookModel bookModel;
  BookDetailsComponent({
    super.key,
    required this.bookModel
  }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1B2E3A),
        centerTitle: true,
        title: Text(
          bookModel.title!,
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
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 25,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 1,
            ),
            BookShow(
                bookModel: bookModel,
            ),
            const AboutBook(),
            DescriptionAboutBook(
                bookModel: bookModel,
            ),
          ],
        ),
      ),
    );
  }
}