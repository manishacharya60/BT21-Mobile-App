import 'package:bt21/constant.dart';
import 'package:bt21/models/character.dart';
import 'package:bt21/screens/detail/detail_screen.dart';
import 'package:bt21/screens/home/components/character_card.dart';
import 'package:bt21/screens/home/components/top_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        TopBanner(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              itemCount: character.length,
              itemBuilder: (context, index) => CharacterCard(
                character: character[index],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        character: character[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
