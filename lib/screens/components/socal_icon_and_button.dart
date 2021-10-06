import 'package:flutter/material.dart';
import 'package:japan_landing_page/screens/components/custom_icon_button.dart';
import 'package:japan_landing_page/screens/components/custom_text_button.dart';

class SocalIconAndButton extends StatelessWidget {
  const SocalIconAndButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (MediaQuery.of(context).size.width > 1085)
          Row(
            children: [
              CustomIconButton(
                iconSrc: "assets/icons/twitter.png",
                onTap: () {},
              ),
              CustomIconButton(
                iconSrc: "assets/icons/messenger.png",
                onTap: () {},
              ),
              CustomIconButton(
                iconSrc: "assets/icons/instagram.png",
                onTap: () {},
              ),
              CustomIconButton(
                iconSrc: "assets/icons/youtube.png",
                onTap: () {},
              ),
            ],
          ),
        const SizedBox(width: 20),
        CustomTextButton(
          title: "Explore",
          onTap: () {},
        ),
      ],
    );
  }
}
