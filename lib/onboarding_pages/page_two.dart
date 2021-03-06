import 'package:flutter/material.dart';

import 'package:birthpad/utils/info.dart';
import 'package:birthpad/utils/mypainter.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(color: Color(0xffffffff)),
            Container(
              child: MyPainter(Color(0xffB2EBF2)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 6,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 6.4,
                      right: SizeConfig.blockSizeHorizontal * 6.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'LibreHealth',
                        style: TextStyle(
                            fontFamily: 'Header',
                            fontSize: SizeConfig.blockSizeHorizontal * 5.2,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.2,
                            color: Color(0xff757575)),
                      ),
                      Text(
                        'Skip',
                        style: TextStyle(
                          fontFamily: 'Header',
                          fontSize: SizeConfig.blockSizeHorizontal * 3.4,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                          color: Color(0xff546E7A),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 6,
                ),
                Center(
                  child: Image.asset(
                    'assets/page_two.jpg',
                    fit: BoxFit.contain,
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.blockSizeVertical * 38,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 14),
                  child: Text(
                    "Easy",
                    style: TextStyle(
                        letterSpacing: 2,
                        fontSize: SizeConfig.blockSizeHorizontal * 7.6,
                        color: Color(0xffBDBDBD),
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 14),
                  child: Text(
                    "Registration",
                    style: TextStyle(
                        letterSpacing: 2,
                        fontSize: SizeConfig.blockSizeHorizontal * 10.2,
                        color: Color(0xff607D8B),
                        fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 4),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 14,
                      right: SizeConfig.blockSizeHorizontal * 14),
                  child: Text(
                    "we provide easy and secure way\n"
                    "for birth registration.",
                    style: TextStyle(
                      letterSpacing: 0.4,
                      fontSize: SizeConfig.blockSizeHorizontal * 4.2,
                      color: Color(0xff616161),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 8,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 14,
                      right: SizeConfig.blockSizeHorizontal * 14),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: SizeConfig.blockSizeHorizontal * 1.4,
                        backgroundColor: Color(0xffE0E0E0),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 4,
                      ),
                      CircleAvatar(
                        radius: SizeConfig.blockSizeHorizontal * 1.8,
                        backgroundColor: Color(0xffB0BEC5),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 4,
                      ),
                      CircleAvatar(
                        radius: SizeConfig.blockSizeHorizontal * 1.4,
                        backgroundColor: Color(0xffE0E0E0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
