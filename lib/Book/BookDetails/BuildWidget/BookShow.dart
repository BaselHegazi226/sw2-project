import 'package:flutter/material.dart';

import '../../../AdditionalWidgets/IconsForHB.dart';
import '../../Models/BookModel.dart';
import '../BookPreviewScreen.dart';
import '../PaymentBook.dart';

class BookShow extends StatelessWidget {
  final BookModel bookModel;
  const BookShow({super.key, required this.bookModel});
  dynamic author() {
    String author = '';

    List<dynamic> authorList = bookModel.authors;
    for (int i = 0; i < authorList.length; i++) {
      if (authorList.isNotEmpty) {
        if (i == authorList.length - 1) {
          author += authorList[i];
        } else {
          author += authorList[i] + ' , ';
        }
      }
    }
    return author;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color(0xff1B2E3A),
          width: 140,
          height: 205,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: bookModel.image == null
                ? Image.asset('assets/Images/no image.jpeg')
                : Image.network(
                    bookModel.image!,
                    //fit: BoxFit.fill,
                    width: 270,
                    height: 300,
                  ),
          ),
        ),
        Container(
          width: 2,
          height: 205,
          color: Colors.white,
        ),
        Container(
            color: const Color(0xff1B2E3A),
            width: 269,
            height: 205,
            child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Text(
                          '${bookModel.title!} .',
                          style: const TextStyle(
                            color: Color(0xffFF914D),
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'by : ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${author()} .',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconsForHB(
                              image: 'assets/Icons/ReadIcon.png',
                              text: 'Read',
                              color: Colors.white,
                              onPressed: () {
                                final String previewUrl =
                                    bookModel.previewLink.contains('http://')
                                        ? bookModel.previewLink
                                            .replaceFirst('http://', 'https://')
                                        : bookModel.previewLink;
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BookPreviewScreen(
                                    previewUrl: previewUrl,
                                    bookModel: bookModel,
                                  ),
                                ));
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconsForHB(
                              image: 'assets/Icons/SellIcons.png',
                              text: 'Buy',
                              color: const Color(0xffFF914D),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const PaymentBook();
                                }));
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ))),
      ],
    );
  }
}
