import 'package:flutter/material.dart';
import '../Models/DepartmentModel.dart';

class Department extends StatelessWidget {
  final DepartmentModel departmentModel;
  final VoidCallback onPressed;

  const Department({super.key, required this.departmentModel,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(right: 16,left: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                departmentModel.image,
                fit: BoxFit.contain,
                height: 160,
                width: 280,
              ),
            ),
            // Text(
            //   departmentModel.departmentName,
            //   style: const TextStyle(
            //     color: Colors.black,
            //     fontSize: 25,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}