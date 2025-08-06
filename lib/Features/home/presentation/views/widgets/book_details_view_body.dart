import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [BookDetailsCustomAppBar()]),
    );
  }
}

class BookDetailsCustomAppBar extends StatelessWidget {
  const BookDetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
