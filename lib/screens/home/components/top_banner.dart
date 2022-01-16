import 'package:bt21/constant.dart';
import 'package:bt21/models/character.dart';
import 'package:bt21/screens/home/components/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      width: double.infinity,
      height: size.height * 0.3,
      decoration: BoxDecoration(
        color: kBlackTextColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: ScreenTitle(),
              ),
              Expanded(
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 4500),
                  curve: Curves.easeOutQuart,
                  builder: (BuildContext context, double _val, Widget? child) {
                    return Padding(
                      padding: EdgeInsets.only(top: _val * 10),
                      child: Image.asset(
                        "sources/logo.png",
                        width: 100,
                        height: 50,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.05),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Search",
                hintStyle: GoogleFonts.lato(),
                icon: SvgPicture.asset(
                  "sources/search.svg",
                  color: kBlackTextColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
