import 'package:flutter/material.dart';
import 'package:japan_landing_page/main.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextField(
        style: navTextStyle.copyWith(color: Colors.white),
        decoration: InputDecoration(
          hintStyle: navTextStyle.copyWith(color: Colors.white),
          contentPadding: EdgeInsets.only(
            left: 20.0,
            top: 0.0,
            bottom: 0.0,
            right: 10.0,
          ),
          isDense: true,
          hintText: "Search",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20.0),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.search,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
