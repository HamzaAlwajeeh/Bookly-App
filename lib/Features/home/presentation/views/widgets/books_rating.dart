import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key, required this.rating, required this.count});
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 16),
          SizedBox(width: 6.3),
          Text('$rating', style: Styles.textStyle16),
          SizedBox(width: 5),
          Text(
            '$count',
            style: Styles.textStyle14.copyWith(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
