import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  String selectedValue;
  List<String> items;
  CustomDropDownButton({Key key, this.selectedValue, this.items})
      : super(key: key);
  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        child: DropdownButton<String>(
          value: widget.selectedValue,
          hint: Text(widget.selectedValue),
          items: widget.items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(fontSize: 11),
              ),
            );
          }).toList(),
          onChanged: (newvalue) {
            setState(() {
              widget.selectedValue = newvalue;
            });
          },
        ),
      ),
    );
  }
}
