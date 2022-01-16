import 'package:bt21/constant.dart';
import 'package:bt21/models/character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  final VoidCallback press;
  const CharacterCard({
    Key? key,
    required this.character,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding * 1,
      ),
      height: 180,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                color: character.colorData,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kShadowColor,
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                margin: EdgeInsets.only(right: kDefaultPadding / 2),
                width: 150,
                height: 140,
                child: Hero(
                  tag: 'location-img-${character.imgSrc}',
                  child: Image.asset(character.imgSrc),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 135,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: kDefaultPadding, top: kDefaultPadding / 1.5),
                      child: Text(
                        character.name,
                        style: GoogleFonts.josefinSans(
                          textStyle: Theme.of(context).textTheme.headline5,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                          color: kBlackTextColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        character.nickname,
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.headline5,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 17,
                          color: kBlundTextColor,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding / 4,
                          vertical: kDefaultPadding / 3),
                      decoration: BoxDecoration(
                        color: character.colorData,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        character.creator.toUpperCase(),
                        style: GoogleFonts.dekko(
                          textStyle: Theme.of(context).textTheme.button,
                          letterSpacing: 2.5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
