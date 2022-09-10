import 'package:flutter/material.dart';
import 'package:medicine/helpers/platform_slider.dart';

class UserSlider extends StatelessWidget {
  final Function handler;
  final int howManyWeeks;
  UserSlider(this.handler, this.howManyWeeks);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: PlatformSlider(
          divisions: 5,
          min: 1,
          max: 5,
          value: howManyWeeks,
          color: Theme.of(context).primaryColorDark,
          handler: this.handler,
        )),
      ],
    );
  }
}
