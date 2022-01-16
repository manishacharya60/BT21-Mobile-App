import 'package:bt21/constant.dart';
import 'package:bt21/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kBlackTextColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: kLightTextColor,
          size: 30,
        ),
        onPressed: () {},
      ),
      // centerTitle: true,
      // title: Text(
      //   "BT21",
      //   style: GoogleFonts.poppins(
      //     fontWeight: FontWeight.bold,
      //     letterSpacing: 2,
      //   ),
      // ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("sources/notification.svg"),
        ),
      ],
    );
  }
}
