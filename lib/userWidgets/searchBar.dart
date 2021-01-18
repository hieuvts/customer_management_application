import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 32,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.0),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: TextField(
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 18.0, color: Colors.black),
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 25,
                ),
                border: InputBorder.none,
                hintText: " ",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0)),
          ),
        ),
      ],
    );
  }
}
