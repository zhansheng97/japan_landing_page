import 'package:flutter/material.dart';
import 'package:japan_landing_page/main.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFF70033),
      borderRadius: BorderRadius.circular(20.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 28.0,
            vertical: 10.0,
          ),
          alignment: Alignment.center,
          child: Text(
            title.toUpperCase(),
            style: navTextStyle,
          ),
        ),
      ),
    );
  }
}
