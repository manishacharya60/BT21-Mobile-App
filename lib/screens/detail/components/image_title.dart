import 'package:bt21/constant.dart';
import 'package:bt21/models/character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageandTitle extends StatelessWidget {
  const ImageandTitle({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.name,
                      style: GoogleFonts.josefinSans(
                        textStyle: Theme.of(context).textTheme.display1,
                        color: kBlackTextColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    Text(
                      character.nickname,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.button,
                        color: kLightTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
              ),
              Hero(
                tag: 'location-img-${character.imgSrc}',
                child: Image.asset(
                  character.imgSrc,
                  width: character.id == 2 ? 120 : 160,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
