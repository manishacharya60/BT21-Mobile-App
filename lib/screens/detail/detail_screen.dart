import 'package:bt21/constant.dart';
import 'package:bt21/models/character.dart';
import 'package:bt21/screens/detail/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final Character character;

  const DetailScreen({
    Key? key,
    required this.character,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: character.colorData,
      appBar: AppBar(
        backgroundColor: character.colorData,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("sources/back.svg"),
        ),
      ),
      body: Body(character: character),
    );
  }
}
