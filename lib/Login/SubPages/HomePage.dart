import 'package:flutter/material.dart';

import '../../AdditionalWidgets/TextForHB.dart';
import '../../Book/Builder/BookBuilder.dart';
import '../../Book/Scroll/DepartmentScroll.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff1B2E3A),
        centerTitle: true,
        title: const TextForHB(
          text1: "HB ",
          color1: Color(0xffFF914D),
          size1: 25,
          text2: "E-Library",
          color2: Colors.white,
          size2: 25,
        ),
        iconTheme: const IconThemeData(size: 25, color: Colors.white),
      ),
      body: CustomScrollView(
        slivers: [
          DepartmentScroll(),
          const ArticleBuilder(department: 'General')
        ],
      ),
    );
  }
}
