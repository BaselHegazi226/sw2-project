import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget{
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(
          color: Color(0xff1B2E3A),
        ),
      ),
    );
  }
}