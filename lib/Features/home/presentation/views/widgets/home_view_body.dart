import 'package:bookly_app/Features/home/presentation/views/widgets/home_view_body_content.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/home_view_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [HomeViewHeader(), HomeViewBodyContent()]);
  }
}
