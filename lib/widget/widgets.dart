import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Text('My Chat App'),
  );
}

InputDecoration textFieldInputDecoration(String labelText, Icon iconType) {
  return InputDecoration(
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    prefixIcon: iconType,
    labelText: labelText,
    labelStyle: TextStyle(color: Colors.white54),
  );
}

TextStyle simpleTextStyle() {
  return TextStyle(fontSize: 16.0, color: Colors.white);
}

TextStyle chatRoomTileStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'OverpassRegular',
    fontWeight: FontWeight.w300,
  );
}
