import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const url='https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=';
const apiKEY='NakMoOQqfrFtuEtv42mHVLapX6caw6Yf';
const bWhite=Color(0xFFFBFBFB);
const bBlack=Colors.black87;
const bGrey=Colors.black54;

const bTitle=TextStyle(
    fontSize: 20.0,
    fontFamily: 'HKnova',
    color: bBlack,
    fontWeight: FontWeight.bold
);

const bNewsHeading=TextStyle(
  fontSize: 20.0,
  fontFamily: 'HKnova',
  color: Colors.black87,
  fontWeight: FontWeight.w500
);

const bNewsDescription=TextStyle(
  fontSize: 16.0,
  fontFamily: 'HKnova',
  color: bGrey,
);
const bNewsAuthorDates=TextStyle(
  fontSize: 16.0,
  fontFamily: 'HKnova',
  fontStyle: FontStyle.italic,
  color: bGrey,
);


