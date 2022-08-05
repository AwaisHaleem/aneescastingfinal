import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contant.dart';


class Appbar extends StatelessWidget {
   Appbar({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.svgIcon,
    required this.leadingIcon,
    required this.leadingTap,
    required this.tarilingIcon,
    required this.tarilingTap,
  }) : super(key: key);

  String title;
  String subtitle;
  String svgIcon;
  IconData leadingIcon;
  Function()? leadingTap;
  IconData tarilingIcon;
  Function()? tarilingTap;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: leadingTap,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0,5),
                      blurRadius: 5
                    ),
                  ]
                ),
                padding: const EdgeInsets.all(10),
                child: Icon(leadingIcon,color: primaryColor,),
              ),
            ),
            SvgPicture.asset(svgIcon,color: primaryColor,),
             InkWell(
              onTap: tarilingTap,
               child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0,5),
                      blurRadius: 5
                    ),
                  ]
                ),
                padding: const EdgeInsets.all(10),
                child: Icon(tarilingIcon,color: primaryColor,),
                         ),
             ),
          ],
        ),
        SizedBox(
          height: height(context)*1,
        ),
        Column(
          children: [
            Text(
              title,
              style: GoogleFonts.righteous(
                fontSize: 20,
                color: headingColor,
              ),
            ),
            SizedBox(
              height: height(context) * 1,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: height(context) * 0.1,
                      color: Color.fromRGBO(197, 154, 120, 1),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Text(
                        subtitle,
                        style: TextStyle(color: contentColor),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: height(context) * 0.1,
                      color: Color.fromRGBO(197, 154, 120, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
