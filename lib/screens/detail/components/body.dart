import 'package:bt21/constant.dart';
import 'package:bt21/models/character.dart';
import 'package:bt21/screens/detail/components/button_icon.dart';
import 'package:bt21/screens/detail/components/image_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final Character character;

  const Body({
    Key? key,
    required this.character,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.31),
                padding: EdgeInsets.only(
                  top: size.height * 0.03,
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CaptionwithInfo(
                      caption: "NAME",
                      info: character.name,
                    ),
                    CaptionwithInfo(
                      caption: "NICKNAME",
                      info: character.nickname,
                    ),
                    CaptionwithInfo(
                      caption: "CREATOR",
                      info: character.creator,
                    ),
                    CaptionwithInfo(
                      caption: "TAGS",
                      info: character.tag,
                    ),
                    CaptionwithInfo(
                      caption: "DESCRIPTION",
                      info: character.description,
                    ),
                    SizedBox(height: 5),
                    ColorDot(character: character),
                    Spacer(),
                    ButtonwithIcon(character: character),
                    Spacer(),
                  ],
                ),
              ),
              ImageandTitle(character: character),
            ],
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "COLOR",
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            letterSpacing: 2,
            color: kBlundTextColor.withOpacity(0.8),
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.all(3),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: character.colorData,
            ),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: character.colorData,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

class CaptionwithInfo extends StatelessWidget {
  final String caption, info;
  const CaptionwithInfo({
    Key? key,
    required this.caption,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2.5),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.button,
          children: [
            TextSpan(
              text: "$caption \n",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                letterSpacing: 2,
                color: kBlundTextColor.withOpacity(0.8),
              ),
            ),
            TextSpan(
              text: info,
              style: GoogleFonts.josefinSans(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                letterSpacing: 2,
                color: kBlackTextColor.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
