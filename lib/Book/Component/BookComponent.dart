import 'package:flutter/material.dart';
import '../Models/BookModel.dart';

class Book extends StatelessWidget {
  final BookModel bookModel;
  final VoidCallback onPressed;
//اللي انا بعمل منه اكتر من مره هو ده الي بيتحط فيه ال on pressed ككائن
  const Book(
      {super.key, required this.bookModel, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,//رأسي
            horizontal: 66,//افقي
          ),
            child: Column(
              children: [
                Container(
                  color: const Color(0xff1B2E3A),
                  height: 350,
                  width: 350,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: bookModel.image == null ?
                      Image.asset('assets/Images/no image.png'):
                      Image.network(bookModel.image!,
                        fit: BoxFit.contain,
                        height: 320,
                        width: 270,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 6,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.title!,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1B2E3A),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      bookModel.description ?? '',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 3,),
                  ],
                ),
              ],
            ),
          )
        ),
      );
  }
}