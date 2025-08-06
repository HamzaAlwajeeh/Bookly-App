import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onPressed, this.onChanged});

  final void Function(String)? onChanged;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          filled: true,
          fillColor: Colors.white.withOpacity(0.25),
          hintText: 'Search...',
          hintStyle: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            iconSize: 18,
          ),
          border: buildOutLineInputBorder(),
          enabledBorder: buildOutLineInputBorder(),
          focusedBorder: buildOutLineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none,
    );
  }
}
