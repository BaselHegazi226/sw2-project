import 'package:flutter/material.dart';

import '../BookDetails/BookDetails.dart';
import '../Component/BookComponent.dart';
import '../Models/BookModel.dart';

class BookScroll extends StatelessWidget {
  List<BookModel> books;
  BookScroll({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Book(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return BookDetails(
                        bookModel: books[
                            index]); //The position of details for any book alone
                  },
                ),
              );
            },
            bookModel: books[index],
          );
        },
        childCount: books.length,
      ),
    );
  }
}
