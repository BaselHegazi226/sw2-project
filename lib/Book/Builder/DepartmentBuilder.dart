import 'package:flutter/material.dart';
import 'BookBuilder.dart';

class DepartmentBuilder extends StatelessWidget{
  String departmentName;
  DepartmentBuilder({super.key,required this.departmentName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1B2E3A),
        centerTitle: true,
        title: Text(
          departmentName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
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
          color: Colors.white
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
          child: Icon(
              Icons.book_sharp,
          ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          ArticleBuilder(department: departmentName),
        ],
      ),
    );
  }
}