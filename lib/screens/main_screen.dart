import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japan_landing_page/models/place.dart';
import 'package:japan_landing_page/screens/components/custom_place_and_text_tile.dart';
import 'package:japan_landing_page/screens/components/top_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  Place place = allPlaces[0];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final minimumHeight = 460;
    double sizeHeight = size.height;
    print(sizeHeight);

    if (size.height < minimumHeight)
      setState(() {
        sizeHeight = 754;
      });
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              //* -----------------------------
              //* Background Image
              //* -----------------------------
              Container(
                height: sizeHeight,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        place.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black, Colors.transparent],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0, 0.2],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE10047).withOpacity(0.8),
                        ),
                      ),
                    ),
                    if (size.width >= 550)
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              place.title,
                              style: GoogleFonts.montserrat(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Text(
                              place.name,
                              style: GoogleFonts.montserrat(
                                fontSize: 160,
                                color: Colors.white,
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (size.width < 550)
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              place.title,
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Text(
                              place.name,
                              style: GoogleFonts.montserrat(
                                fontSize: 80,
                                color: Colors.white,
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),

              Center(
                child: Container(
                  padding: (MediaQuery.of(context).size.width >= 350)
                      ? EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0)
                      : EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 20.0),
                  alignment: Alignment.center,
                  width: double.infinity,
                  constraints: BoxConstraints(maxWidth: 1280),
                  height: sizeHeight,
                  child: Column(
                    children: [
                      TopNavBar(),
                      Spacer(),
                      if (MediaQuery.of(context).size.width > 890)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...List.generate(
                                allPlaces.length - 1,
                                (index) => CustomPlaceAndTextTile(
                                  place: allPlaces[index + 1],
                                  onTap: () {
                                    setState(() {
                                      currentIndex = index + 1;
                                      place = allPlaces[index + 1];
                                    });
                                  },
                                  isSelected: (index + 1) == currentIndex,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (MediaQuery.of(context).size.width <= 890)
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                // color: Colors.blue,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ...List.generate(
                                      2,
                                      (index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 20.0,
                                        ),
                                        child: CustomPlaceAndTextTile(
                                          place: allPlaces[index + 1],
                                          onTap: () {
                                            setState(() {
                                              currentIndex = index + 1;
                                              place = allPlaces[index + 1];
                                            });
                                          },
                                          isSelected:
                                              (index + 1) == currentIndex,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.blue,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ...List.generate(
                                      2,
                                      (index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 20.0,
                                        ),
                                        child: CustomPlaceAndTextTile(
                                          place: allPlaces[index + 3],
                                          onTap: () {
                                            setState(() {
                                              currentIndex = index + 1;
                                              place = allPlaces[index + 3];
                                            });
                                          },
                                          isSelected:
                                              (index + 3) == currentIndex,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

// Stack(
//         children: [
//           //* -----------------------------
//           //* Background Image
//           //* -----------------------------
//           Container(
//             child: Stack(
//               children: [
//                 Positioned.fill(
//                   child: Image.asset(
//                     place.image,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.black, Colors.transparent],
//                       begin: Alignment.bottomCenter,
//                       end: Alignment.topCenter,
//                       stops: [0, 0.2],
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Container(
//                     height: 250,
//                     width: 250,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color(0xFFE10047).withOpacity(0.8),
//                     ),
//                   ),
//                 ),
//                 if (size.width >= 550)
//                   Align(
//                     alignment: Alignment.center,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           place.title,
//                           style: GoogleFonts.montserrat(
//                             fontSize: 40,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w100,
//                           ),
//                         ),
//                         Text(
//                           place.name,
//                           style: GoogleFonts.montserrat(
//                             fontSize: 160,
//                             color: Colors.white,
//                             height: 1.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 if (size.width < 550)
//                   Align(
//                     alignment: Alignment.center,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           place.title,
//                           style: GoogleFonts.montserrat(
//                             fontSize: 20,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w100,
//                           ),
//                         ),
//                         Text(
//                           place.name,
//                           style: GoogleFonts.montserrat(
//                             fontSize: 80,
//                             color: Colors.white,
//                             height: 1.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//               ],
//             ),
//           ),

//           Center(
//             child: Container(
//               padding: (MediaQuery.of(context).size.width >= 350)
//                   ? EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0)
//                   : EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 20.0),
//               alignment: Alignment.center,
//               width: double.infinity,
//               constraints: BoxConstraints(maxWidth: 1280),
//               height: size.height,
//               child: Column(
//                 children: [
//                   TopNavBar(),
//                   Spacer(),
//                   if (MediaQuery.of(context).size.width > 890)
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ...List.generate(
//                             allPlaces.length - 1,
//                             (index) => CustomPlaceAndTextTile(
//                               place: allPlaces[index + 1],
//                               onTap: () {
//                                 setState(() {
//                                   currentIndex = index + 1;
//                                   place = allPlaces[index + 1];
//                                 });
//                               },
//                               isSelected: (index + 1) == currentIndex,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   if (MediaQuery.of(context).size.width <= 890)
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Container(
//                             // color: Colors.blue,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 ...List.generate(
//                                   2,
//                                   (index) => Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                       vertical: 10.0,
//                                       horizontal: 20.0,
//                                     ),
//                                     child: CustomPlaceAndTextTile(
//                                       place: allPlaces[index + 1],
//                                       onTap: () {
//                                         setState(() {
//                                           currentIndex = index + 1;
//                                           place = allPlaces[index + 1];
//                                         });
//                                       },
//                                       isSelected: (index + 1) == currentIndex,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             // color: Colors.blue,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 ...List.generate(
//                                   2,
//                                   (index) => Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                       vertical: 10.0,
//                                       horizontal: 20.0,
//                                     ),
//                                     child: CustomPlaceAndTextTile(
//                                       place: allPlaces[index + 3],
//                                       onTap: () {
//                                         setState(() {
//                                           currentIndex = index + 1;
//                                           place = allPlaces[index + 3];
//                                         });
//                                       },
//                                       isSelected: (index + 3) == currentIndex,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
