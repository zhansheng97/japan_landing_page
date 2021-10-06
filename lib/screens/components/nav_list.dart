import 'package:flutter/material.dart';
import 'package:japan_landing_page/main.dart';

class NavList extends StatefulWidget {
  const NavList({
    Key? key,
  }) : super(key: key);

  @override
  _NavListState createState() => _NavListState();
}

class _NavListState extends State<NavList> {
  final List<String> navListItems = [
    "hometales of japan",
    "destinations",
    "experiences"
  ];

  int? currentHover;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          navListItems.length,
          (index) => NavItem(
            title: navListItems[index],
            onHover: (value) {
              if (value) {
                setState(() {
                  currentHover = index;
                });
              } else {
                setState(() {
                  currentHover = null;
                });
              }
            },
            onTap: () {
              print("YOU TAP ON ${navListItems[index].toUpperCase()}");
            },
            isHover: index == currentHover,
          ),
        ),
      ],
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Function(bool value) onHover;
  final bool isHover;

  const NavItem({
    Key? key,
    required this.title,
    required this.onTap,
    required this.onHover,
    this.isHover = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.transparent,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          highlightColor: Colors.transparent,
          onHover: onHover,
          onTap: onTap,
          child: Text(
            title.toUpperCase(),
            style: navTextStyle.copyWith(color: isHover ? Colors.grey : null),
          ),
        ),
      ),
    );
  }
}
