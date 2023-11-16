import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String txt;
  Color clr;
  final VoidCallback onPress;


  MyButton({super.key, required this.txt,required this.clr, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(onTap: onPress,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: clr,
            shape: BoxShape.circle
          ),
          child: Center(child: Text(txt,style:
          TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}
