
import 'package:flutter/cupertino.dart';
styleOfText({size:double,fontweight:FontWeight,color:Color}){
  return TextStyle(
    fontSize:size ,
    fontWeight:fontweight ,
    color:color,
  );
}
Move(BuildContext context,String routname,{args:Map} )
{
  Navigator.pushReplacementNamed(context, routname,arguments:args );
}