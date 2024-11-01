import 'package:flutter/material.dart';

import '../../Models/BookModel.dart';

class DescriptionAboutBook extends StatelessWidget {
  final BookModel bookModel;
  Color colorForDescription = Colors.white;

  DescriptionAboutBook({super.key, required this.bookModel});

  dynamic description() {
    String descriptionVar = '';
    if (bookModel.description != '') {
      descriptionVar = '${bookModel.description} .';
    } else {
      descriptionVar = '\'  Google not provide to us any description  \' ';
      colorForDescription = Colors.redAccent;
    }
    return descriptionVar;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff1B2E3A),
        width: MediaQuery.of(context).size.width,
        height: 556, // MediaQuery.of(context).size.height,
        child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: ListView(
              children: [
                Column(
                  children: [
                    Text(
                      description(),
                      style: TextStyle(
                        color: colorForDescription,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Published date : ',
                          style: TextStyle(
                              color: Color(0xffFF914D),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${bookModel.publishedDate} .',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Page count : ',
                          style: TextStyle(
                              color: Color(0xffFF914D),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${bookModel.pageCount} .',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'publisher : ',
                          style: TextStyle(
                              color: Color(0xffFF914D),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                            child: Text(
                          '${bookModel.publisher} .',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ],
                ),
              ],
            )));
  }
}
