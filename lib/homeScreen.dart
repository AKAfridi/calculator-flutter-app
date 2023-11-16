import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'Button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userInput="";
  String Answer="";
  void equal(){
    String finalUserInput =userInput.replaceAll("X", "*");
    Parser p =Parser();
    Expression expression =p.parse(finalUserInput);
    ContextModel contextModel =ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    Answer =eval.toString();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.black12,
      body: SafeArea(
      child: Column(
        children: [
           Expanded(flex: 1,
            child: Padding(
              padding:EdgeInsets.all(8.0),
              child: Container(decoration: BoxDecoration(
                color: Colors.lightGreen.shade300,
                borderRadius: BorderRadius.circular(10)
              ),
                child: Column(mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Row(mainAxisAlignment:MainAxisAlignment.end,
                    children: [
                      Text(userInput.toString(),style: TextStyle(color: Colors.black,
                          fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(width:10 ,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text(Answer.toString(),style: TextStyle(color: Colors.black,
                          fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                    ],
                  ),
                    SizedBox(height: 10,),
                ],),
              ),
            ),
          ),
          Expanded(flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),

                color: Colors.lightGreen.shade300
              ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      MyButton(txt: "AC", clr: Colors.lightGreen.shade600,onPress:(){
                        userInput ="";
                        Answer="";
                        setState(() {
                        });
                      },),
                      MyButton(txt: "DEL", clr: Colors.lightGreen.shade600,onPress:(){
                        if(userInput.length<1){
                          print("Nothing left");
                        }
                        else{
                          userInput = userInput.substring(0,userInput.length -1);
                        }
                        setState(() {
                        });
                      } ,),
                      MyButton(txt: "%", clr: Colors.lightGreen.shade600,onPress:(){
                        userInput+="%";
                        setState(() {
                        });
                      },),
                      MyButton(txt: "/", clr: Colors.lightGreen.shade600,onPress:(){
                        userInput+="/";
                        setState(() {
                        });
                      },),
                    ],
                  ),
                    Row(
                      children: [
                        MyButton(txt: "1", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="1";
                          setState(() {

                          });
                        },),
                        MyButton(txt: "2", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="2";
                          setState(() {
                          });
                        } ,),
                        MyButton(txt: "3", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="3";
                          setState(() {
                          });
                        },),
                        MyButton(txt: "X", clr: Colors.lightGreen.shade600,onPress:(){
                          if(userInput==""){
                            print("Invalid Syntax");
                          }
                          else{
                            userInput+="X";
                          }
                          setState(() {
                          });
                        } ,),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(txt: "4", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="4";
                          setState(() {
                          });
                        },),
                        MyButton(txt: "5", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="5";
                          setState(() {
                          });
                        } ,),
                        MyButton(txt: "6", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="6";
                          setState(() {
                          });
                        },),
                        MyButton(txt: "-", clr: Colors.lightGreen.shade600,onPress:(){
                            if(userInput==""){
                            print("Invalid Syntax");
                            }
                            else{
                            userInput+="-";
                            }
                            setState(() {
                            });
                            }
                         ,),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(txt: "7", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="7";
                          setState(() {
                          });
                        },),
                        MyButton(txt: "8", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="8";
                          setState(() {
                          });
                        } ,),
                        MyButton(txt: "9", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="9";
                          setState(() {
                          });
                        },),
                        MyButton(txt: "+", clr: Colors.lightGreen.shade600,onPress:(){
                            if(userInput==""){
                            print("Invalid Syntax");
                            }
                            else{
                            userInput+="+";
                            }
                            setState(() {
                            });
                        } ,),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(txt: ".", clr: Colors.lightGreen.shade600,onPress:(){
                          userInput+=".";
                        },),
                        MyButton(txt: "0", clr: Colors.greenAccent.shade100,onPress:(){
                          userInput+="0";
                          setState(() {
                          });
                        } ,),
                        MyButton(txt: "+/-", clr: Colors.lightGreen.shade600,onPress:(){
                            userInput+="+/-";
                          setState(() {
                          });
                        },),
                        MyButton(txt: "=", clr: Colors.lightGreen.shade600,onPress:(){
                          equal();
                          setState(() {
                          });
                        } ,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    ),) ;
  }
}
