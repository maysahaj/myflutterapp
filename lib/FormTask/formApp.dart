
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

import 'cutomTextField.dart';

class FormApp extends StatelessWidget {
  String name;
  String email;
  String address;
  savedName(String value){
    this.name = value;
  }
  savedEmail(String value){
    this.email = value;

  }
   savedAddesess(String value){
    this.address = value;

  }
    validationNameAddresess(String value){
    if(value == null || value == '')
    return 'this field is Required';
    else if(!isAlpha(value)){
      return 'this value cant contain anu number!';
    }

  }
  validationEmail(String value){
    if(value == null || value == '')
    return 'this field is Required';
    else if(!isEmail(value)){
      return 'invalid email';
    }

  }

  GlobalKey<FormState> formKey = GlobalKey();

  submitForm() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('MyFormApplication')),
      body: Container(
        
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            children:<Widget>[
              
              TextFieldForm(
                validationFun: validationNameAddresess,
                savedFun: savedName,
                label: 'Enter your Name',
              ),
              SizedBox(
                height:20
              ),
               TextFieldForm(
                 validationFun: validationEmail,
                 savedFun: savedEmail,
                label: 'Enter your email',
              ),
              SizedBox(
                height:20
              ),
               TextFieldForm(             
               validationFun: validationNameAddresess,
               savedFun: savedAddesess,
                label: 'Enter your address',
              ),
              Spacer(),       
              GestureDetector(
                onTap:(){
                   submitForm();
                },
               child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(20),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(20)),
                    child: Text('Submit'),
                  ),
              ),     
            ]
            
          ),
          

        )
        
      ),
    );
  }
}