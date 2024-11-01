import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../AdditionalWidgets/Error.dart';
import '../../AdditionalWidgets/LoadingIndicator.dart';
import '../Models/BookModel.dart';
import '../Scroll/BookScroll.dart';
import '../Services/BookServices.dart';

class ArticleBuilder extends StatefulWidget{
  final String department;
  const ArticleBuilder({super.key, required this.department});
  @override
  State<ArticleBuilder> createState()=> _ArticleBuilder();

}
class _ArticleBuilder extends State<ArticleBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = BookServices(Dio()).getNews(department: widget.department);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<BookModel>>(
        future: future,
        builder: (context, snapshot) {
          return snapshot.hasData ?
              BookScroll(books: snapshot.data!):
              snapshot.hasError ?
              Error_Widget():
                  const LoadingIndicator();
        }
    );
  }
}