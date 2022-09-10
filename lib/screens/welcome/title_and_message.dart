import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TitleAndMessage extends StatelessWidget {
  final double deviceHeight;
  TitleAndMessage(this.deviceHeight);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: deviceHeight * 0.15,
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: AutoSizeText(
              "Your health our priority",
              style: Theme.of(context).textTheme.headline1.copyWith(
                  color: Color.fromARGB(255, 24, 14, 41), height: 1.3),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
        ),
        Container(
          height: deviceHeight * 0.15,
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: AutoSizeText(
              "A purpose based medireminder app presented to you by our group",
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Color.fromARGB(255, 38, 24, 52),
                    height: 1.3,
                  ),
              textAlign: TextAlign.center,
              maxLines: 3,
            ),
          ),
        ),
      ],
    );
  }
}
