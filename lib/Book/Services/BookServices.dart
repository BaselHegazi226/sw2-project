import 'package:dio/dio.dart';
import '../Models/BookModel.dart';

class BookServices {
  final Dio dio;
  List<BookModel> bookList=[];
  BookServices(this.dio);

  Future<List<BookModel>> getNews ({required String department}) async{
    try{
      Response response =await dio.get('https://www.googleapis.com/books/v1/volumes?q=$department');

      Map<String,dynamic> jsonMap=response.data;

      List<dynamic> jsonList=jsonMap['items'];

      for(var book in jsonList){
        BookModel bookModel=BookModel.fromJson(book);
        bookList.add(bookModel);
      }

      return bookList;
    }

    catch(e){
      return bookList=[];
    }

  }
}