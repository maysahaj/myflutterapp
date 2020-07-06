
import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  final String label;
  final Function validationFun;
  final Function savedFun;
  TextFieldForm({this.label, this.validationFun, this.savedFun});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:(newValue)=>savedFun(newValue) ,
      validator:(value)=>validationFun(value),
      decoration: InputDecoration(
        labelText: label,
         fillColor: Colors.blueGrey[200],
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20))),
    );
  }
}