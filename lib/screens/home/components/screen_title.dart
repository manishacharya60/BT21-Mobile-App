import 'package:bt21/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 2500),
      tween: Tween<double>(begin: 0, end: 1),
      curve: Curves.easeInExpo,
      builder: (BuildContext context, double _val, Widget? child) {
        return Opacity(
          opacity: _val,
          child: Padding(
            padding: EdgeInsets.only(top: _val * 10),
            child: child,
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BT21",
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline4,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
              color: kLightTextColor.withOpacity(0.9),
            ),
          ),
          Text(
            "We Are Bulletproof".toUpperCase(),
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.headline6,
              fontWeight: FontWeight.w500,
              color: kLightTextColor.withOpacity(0.7),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
