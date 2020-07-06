import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myApp/wedget/custumfield.dart';
import 'package:string_validator/string_validator.dart';

class PersonalInfo extends StatelessWidget {
  String email;
  String userName;
  String address;

  saveEmail(String value) {
    this.email = value;
  }

  saveUserName(String value) {
    this.userName = value;
  }

  saveAddress(String value) {
    this.address = value;
  }

  validateEmail(String value) {
    if (value == null || value == '') {
      return 'this field is required';
    } else if (!isEmail(value)) {
      return 'invalid email syntax';
    }
  }

  validateNameOrAddress(String value) {
    if (value == null || value == '') {
      return 'this field is required';
    } else if (!isAlpha(value)) {
      return 'this value cant contain anu number!';
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
      appBar: AppBar(
        title: Text('Personal Info'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                CustomTextField(
                  label: 'Name',
                  validationFun: validateNameOrAddress,
                  saveFormField: saveUserName,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  label: 'Email',
                  validationFun: validateEmail,
                  saveFormField: saveEmail,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  label: 'address',
                  validationFun: validateNameOrAddress,
                  saveFormField: saveAddress,
                ),
               Spacer(),
                GestureDetector(
                  onTap: () {
                    submitForm();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(20),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange[400],
                        borderRadius: BorderRadius.circular(20)),
                    child: Text('Submit'),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

