import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String iconSrc;
  final VoidCallback onTap;

  const CustomIconButton({
    Key? key,
    required this.iconSrc,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50.0),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(50.0),
        onTap: onTap,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              iconSrc,
              height: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
