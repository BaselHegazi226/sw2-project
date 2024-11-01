import 'package:flutter/material.dart';
import '../Builder/DepartmentBuilder.dart';
import '../Component/DepartmentComponent.dart';
import '../Models/DepartmentModel.dart';

class DepartmentScroll extends StatelessWidget {
  DepartmentScroll({super.key});
  final List<DepartmentModel> department = [
    DepartmentModel(
      image: 'assets/Department/General.jpg',
      departmentName: 'General',
    ),
    DepartmentModel(
      image: 'assets/Department/Coding.jpg',
      departmentName: 'Coding',
    ),
    DepartmentModel(
      image: 'assets/Department/Palestine.jpg',
      departmentName: 'Palestine',
    ),
    DepartmentModel(
      image: 'assets/Department/War.jpg',
      departmentName: 'War',
    ),
    DepartmentModel(
      image: 'assets/Department/Arts and Design.jpg',
      departmentName: 'Arts and Design',
    ),
    DepartmentModel(
      image: 'assets/Department/Business and Economics.jpg',
      departmentName: 'Business and Economics',
    ),
    DepartmentModel(
      image: 'assets/Department/Health and Wellness.jpg',
      departmentName: 'Health and Wellness',
    ),
    DepartmentModel(
      image: 'assets/Department/Social Science.jpg',
      departmentName: 'Social Science',
    ),
    DepartmentModel(
      image: 'assets/Department/Philosophy.jpg',
      departmentName: 'Philosophy',
    ),
    DepartmentModel(
      image: 'assets/Department/Literature.jpg',
      departmentName: 'Literature',
    ),
    DepartmentModel(
      image: 'assets/Department/Languages and Translation.jpg',
      departmentName: 'Languages and Translation',
    ),
    DepartmentModel(
      image: 'assets/Department/Islamic Religion.jpg',
      departmentName: 'Islamic Religion',
    ),
    DepartmentModel(
      image: 'assets/Department/History.jpg',
      departmentName: 'History',
    ),
    DepartmentModel(
      image: 'assets/Department/Geography.jpg',
      departmentName: 'Geography',
    ),
    DepartmentModel(
      image: 'assets/Department/Education and Training.jpg',
      departmentName: 'Education and Training',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 160,
        margin: const EdgeInsets.only(right: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: department.length,
          itemBuilder:(context,index){
            return Department(
              departmentModel: department[index],
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  //اللعب هنا بس في اني اخلي الرياضه تكون متغير
                  return DepartmentBuilder(departmentName: department[index].departmentName,);
                }));
              },
            );
          },
        ),
      ),
    );
  }
}



