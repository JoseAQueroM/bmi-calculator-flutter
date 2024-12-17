import 'package:flutter/material.dart';

const containerColor = Color(0xFF1D1E33);

class Cards extends StatelessWidget {

  Cards({required this.cardChild});

  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: cardChild,
    );
  }
}

class CardsGender extends StatefulWidget {

  CardsGender({required this.cardGender, required this.colour});

  final Widget cardGender;
  final Color colour;

  @override
  State<CardsGender> createState() => _CardsGenderState();
}

class _CardsGenderState extends State<CardsGender> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: widget.colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: widget.cardGender,
    );
  }
}
