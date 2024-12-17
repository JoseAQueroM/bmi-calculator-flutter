import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({
    required this.onTap,
    required this.buttonTitle,
  });

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
          margin: const EdgeInsets.only(top: 15.0),
          height: 70.0,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: blueApp,
          ),
          child: Center(
            child: Text(
              buttonTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          )),
    );
  }
}
