import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clock_temp/clock_hands.dart';

class ClockFace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Opacity(
                    opacity: .4,
                    child: FlareActor(
                      'assets/teddy.flr',
                      animation: 'test',
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 15.0,
                    height: 15.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: ClockHands(),
                )
              ],
            ),
          )),
    );
  }
}
