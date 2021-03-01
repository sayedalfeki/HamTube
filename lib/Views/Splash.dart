import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamtube/Helper/constants.dart';
import 'package:hamtube/Helper/helper.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   // waitAndMove();
    super.initState();
  }

  makeContainer({child:Widget}){
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
            alignment: Alignment.center,
          image:AssetImage(APP_ICON),
          fit: BoxFit.contain
        )
      ),
      child: child,
    );
  }
  makeColumn()
  {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          makeText('Ham Tube',styleOfText(size: 40.0,fontweight: FontWeight.bold,color: RED_COLOR)),
          makeText('            share your knowledge with world ',styleOfText(size: 20.0,fontweight: FontWeight.normal,color:BROWN_COLOR))
        ],
      ),
    );
  }
  makeText(String data,TextStyle style)
  {
    return Text(data,style:style,);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: makeContainer(child: makeColumn()),
    );
  }
  waitAndMove(){
    Future.delayed(Duration(seconds: 3)).then((value) =>
    Move(context,'/login')
    );
  }
}
