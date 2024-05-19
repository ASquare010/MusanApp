import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ThemeData.dart';

class CustomTextForm extends StatelessWidget {
  final hintText , errorText, keyBordType;

  const CustomTextForm({Key key, this.hintText = 'Mobile number or e-mail',this.errorText ='Email Must Contain @',this.keyBordType = TextInputType.emailAddress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
            color: white,
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          validator: (c){
            if(c.contains('@')){
              return null ;
            }
            else
              return errorText;
          },
          cursorColor: black,
          keyboardType: keyBordType ,
          decoration: new InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              hintText: hintText,
              hintStyle: TextStyle(color: grey)),
        ),
      ),
    );
  }
}

class PasswordTextForm extends StatefulWidget {
  final errorMessage , hintText;

  const PasswordTextForm({Key key, this.errorMessage = 'Password must contain 4 chr', this.hintText ='Password'}) : super(key: key);

  @override
  PasswordTextFormState createState() => PasswordTextFormState(errorMessage,hintText);
}

class PasswordTextFormState extends State<PasswordTextForm> {
  var hidePass = true;
  final errorMessage , hintText;

  PasswordTextFormState(this.errorMessage, this.hintText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
            color: white,
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          validator: (c){
            if(c.length < 4 ){
              return errorMessage;
            }
            return null;
          },
          keyboardType: TextInputType.visiblePassword,
          obscureText: hidePass,
          cursorColor: black,
          decoration: new InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              hintText: hintText ,
              hintStyle: TextStyle(color: grey),
              suffixIcon: InkWell(
                 onTap: (){
                  setState(() {
                    hidePass = !hidePass;
                  });
                },
                child: hidePass
                    ? Icon(Icons.remove_red_eye_outlined,color: grey,)
                    : Icon(Icons.remove_red_eye,color: grey,),
              )
          ),
        ),
      ),
    );
  }
}
