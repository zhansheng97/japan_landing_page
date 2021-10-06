import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japan_landing_page/screens/components/nav_list.dart';
import 'package:japan_landing_page/screens/components/search_field.dart';
import 'package:japan_landing_page/screens/components/socal_icon_and_button.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "G",
          style: GoogleFonts.montserrat(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        if (MediaQuery.of(context).size.width > 550)
          Expanded(
            child: Row(
              children: [
                const SizedBox(width: 30.0),
                if (MediaQuery.of(context).size.width > 900) NavList(),
                const SizedBox(width: 20.0),
                SearchField(),
                Spacer(),
                SocalIconAndButton(),
              ],
            ),
          ),
        if (MediaQuery.of(context).size.width <= 550) Spacer(),
        if (MediaQuery.of(context).size.width <= 550)
          IconButton(
            onPressed: () {
              print("menu");
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
      ],
    );
  }
}
