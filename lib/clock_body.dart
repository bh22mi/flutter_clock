import 'package:flutter/material.dart';
import 'package:flutter_clock_temp/clock_face.dart';

class ClockBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    final bool isLandscape = orientation == Orientation.landscape;

    final double width = MediaQuery.of(context).size.width;

    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          children: <Widget>[
            Center(
                child: parentCircle(
                    context, isLandscape, (width * 0.5), (width * 0.6))),
            Center(child: childCircle(context, isLandscape)),
            Center(
              child: nestChildCircler(context),
            ),
            Center(
              child: new Container(
                width: isLandscape
                    ? MediaQuery.of(context).size.width * 0.25
                    : MediaQuery.of(context).size.width * 0.35,
                child: ClockFace(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget timetickerCircle(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.13,
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
        border: new Border.all(
          color: Colors.pinkAccent,
          width: 4.0,
        ),
      ),
    );

Widget nestChildCircler(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(49, 52, 66, 1),
                Color.fromRGBO(5, 6, 21, 1),
              ]),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(19, 21, 36, 1),
                offset: Offset(0.0, 2.0),
                blurRadius: 1.0,
                spreadRadius: 1.0)
          ]),
    );

Widget childCircle(BuildContext context, bool isLandscape) => Container(
      width: isLandscape
          ? MediaQuery.of(context).size.width * 0.4
          : MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(9, 11, 26, 1),
              Color.fromRGBO(49, 52, 66, 1),
            ]),
      ),
    );

Widget parentCircle(BuildContext context, bool isLandscape,
        double widthLandscape, double widthPortrait) =>
    Container(
      width: isLandscape ? widthLandscape : widthPortrait,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: SweepGradient(tileMode: TileMode.repeated, colors: [
            Color.fromRGBO(29, 32, 46, 1),
            Color.fromRGBO(14, 16, 31, 1),
            Color.fromRGBO(29, 32, 46, 1),
            Color.fromRGBO(14, 16, 31, 1),
          ]),
          boxShadow: [
            BoxShadow(
                offset: Offset(0.0, 5.0), blurRadius: 10.0, spreadRadius: 10.0)
          ]),
    );
