import 'package:bt21/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavButton extends StatefulWidget {
  @override
  _FavButtonState createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;
  late Animation _sizeAnimation;
  late Animation _fontsizeAnimation;
  bool isFav = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    _colorAnimation = ColorTween(
      begin: kRjColor,
      end: kPrimaryColor,
    ).animate(_controller);

    _sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem(
          tween: Tween(
            begin: 20,
            end: 30,
          ),
          weight: 50,
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: 30,
            end: 20,
          ),
          weight: 50,
        ),
      ],
    ).animate(_controller);

    _fontsizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem(
          tween: Tween(
            begin: 15,
            end: 16,
          ),
          weight: 50,
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: 16,
            end: 15,
          ),
          weight: 50,
        ),
      ],
    ).animate(_controller);

    _controller.addListener(() {});

    _controller.addStatusListener((status) {
      if ((status) == AnimationStatus.completed) {
        isFav = true;
      } else if ((status) == AnimationStatus.dismissed) {
        isFav = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding / 3.5,
            ),
            decoration: BoxDecoration(
              color: _colorAnimation.value,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 40,
                  spreadRadius: -15,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
              ],
            ),
            child: FlatButton.icon(
              onPressed: () {
                isFav ? _controller.reverse() : _controller.forward();
              },
              icon: Icon(
                Icons.favorite_border,
                color: kLightTextColor,
                size: _sizeAnimation.value,
              ),
              label: Text(
                "Add to favorite".toUpperCase(),
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.button,
                  color: kLightTextColor,
                  fontSize: _fontsizeAnimation.value,
                  letterSpacing: 2,
                ),
              ),
            ),
          );
        });
  }
}
