import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japan_landing_page/models/place.dart';

class CustomPlaceAndTextTile extends StatelessWidget {
  final Place place;
  final VoidCallback onTap;
  final bool isSelected;

  const CustomPlaceAndTextTile({
    Key? key,
    required this.place,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          place.smallPoster,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -3,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
                width:
                    (MediaQuery.of(context).size.width >= 380) ? 20.0 : 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (MediaQuery.of(context).size.width >= 520)
                  Row(
                    children: [
                      Text(
                        place.description,
                        style: GoogleFonts.montserrat(
                          fontSize: 10.0,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                    ],
                  ),
                Text(
                  place.name,
                  style: GoogleFonts.montserrat(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
