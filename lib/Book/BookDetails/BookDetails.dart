import 'package:flutter/material.dart';

import '../Models/BookModel.dart';
import 'BookDetailsComponent.dart';

class BookDetails extends StatelessWidget {
  BookModel bookModel;
  BookDetails({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return BookDetailsComponent(bookModel: bookModel);
  }
}
