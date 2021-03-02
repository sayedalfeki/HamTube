import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamtube/Helper/constants.dart';
import 'package:hamtube/Helper/helper.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() =>
      _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernamectr=TextEditingController();
  TextEditingController passwordctr=TextEditingController();
  bool ispass=true;
  makeContainer({child:Widget}){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: BLACK_COLOR,width: 0.5)
      ),
      child: child,);
  }
  makeTextField({hint:String,label:String,hintsize:double,labelsize:double,controller:TextEditingController,ispassword:bool,preicon:Icon,hintcolor:Color,
  labelcolor:Color})
  {
    return makeContainer(
      child: TextField(
        obscureText:ispassword,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon:!ispassword?null: IconButton(onPressed: (){
            setState(() {
              ispass=!ispass;
            });
          },icon: Icon(ispass?Icons.remove_red_eye_rounded:Icons.remove_red_eye_outlined),),
          prefixIcon: Icon(preicon),
          hintText: hint,
          labelText: label,
          hintStyle: styleOfText(size: hintsize,fontweight: FontWeight.normal,color: hintcolor),
          labelStyle: styleOfText(size: labelsize,fontweight: FontWeight.bold,color: labelcolor),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login'),),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeTextField(hint: 'enter user name',label: 'user name',hintsize: 15.0,labelsize: 20.0,hintcolor: BLACK_COLOR,labelcolor:
              RED_COLOR,ispassword: false,preicon:Icons.person,controller: usernamectr ),
              SizedBox(height:10),
              makeTextField(hint: 'enter password',label: 'password',hintsize: 15.0,labelsize: 20.0,hintcolor: BLACK_COLOR,labelcolor:
              RED_COLOR,ispassword:ispass,preicon:Icons.lock,controller: passwordctr ),
              SizedBox(height:30),
              RaisedButton(
                color: Colors.redAccent,
                child:Text('login',style: styleOfText(color: WHITE_COLOR),),
                onPressed: (){
                  login();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    Move(context,'/homepage');
  }
}
