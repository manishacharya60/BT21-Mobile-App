import 'package:bt21/models/character.dart';
import 'package:bt21/screens/detail/components/fav_button.dart';
import 'package:flutter/material.dart';

class ButtonwithIcon extends StatelessWidget {
  const ButtonwithIcon({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.only(right: 10),
          width: 50,
          height: 50,
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
            child: CircleAvatar(
              child: ClipRRect(
                child: Image.asset(character.imgSrc),
                borderRadius: BorderRadius.circular(50.0),
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        FavButton(),
      ],
    );
  }
}
