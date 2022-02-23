import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class Calculation extends GetxController{

  Color textcolor = Colors.blue;
  Color colorbackground=Colors.pink[400];
  String finalresult="0";
  double equationsize=48;
  double resultsize=38;
  String equation="0";
  int i= 0;
  void onpressed(String text){
    String expression="";
      if(text=="C"){
        equationsize=38;
        resultsize=48;
        equation="0";
        finalresult="0";
      }
      else if(text=="⌫"){
        equationsize=48;
        resultsize=38;
        equation=equation.substring(0,equation.length-1);
        if(equation==""){
          equation="0";
        }
      }
      
      else if(text=="="){
        equationsize=38;
        resultsize=48;
        expression = equation;
        expression = expression.replaceAll('×', "*");
        expression = expression.replaceAll('÷', "/");

        try{
          Parser p = Parser();
          Expression exp= p.parse(expression);
          ContextModel cm =ContextModel();
          finalresult ='${exp.evaluate(EvaluationType.REAL,cm)}';
          //print(i.toString());
          if(i>=1){
          equation=finalresult;
          finalresult="0";
        }
        i++;
        }
        catch(e){
          finalresult="Error";
        }
        
      }
      else{
        if(equation=="0"){
          equation=text;
        }
        else{
          i=0;
          equation= equation+text;
        }
        
      }   
  }

}