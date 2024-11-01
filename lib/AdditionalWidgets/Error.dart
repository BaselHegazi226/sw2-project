import 'package:flutter/material.dart';

class Error_Widget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Center(
          child: Text(
            'App has Error',
            style: TextStyle(
              color: Colors.brown,
              fontSize: 25,
            ),
          ),
        )
    );
  }
}