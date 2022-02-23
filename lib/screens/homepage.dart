import 'package:calculator/screens/calculations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Calculation calc =Calculation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: _body(),
      
    );
  }
  Widget _body(){
    return Column(
      children: [

        screen(),
        inputs(),
      ],
    );
  }
  Widget screen(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
      child: Container(
        
        height: Get.height*0.30,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            SizedBox(height:40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(calc.equation,style:TextStyle(
                fontSize: calc.equationsize,
              ),),
            ),
          SizedBox(height:40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(calc.finalresult,style:TextStyle(
                fontSize: calc.resultsize,
              ),),
            )
          ]
        ),
      ),
    );
  }
  Widget inputs(){
    return Container(
      color: Colors.white,
      height: Get.height*0.5671,
      width: Get.width,
      child: Column(
        children: [
          Row(children:[
            
            Buttons(text: "( )",textcolor: Colors.green[700]),
            Buttons(text:"%",textcolor: Colors.green[700]),
            Buttons(text:"÷",textcolor: Colors.green[700]),
            Buttons(text: "⌫",textcolor: Colors.red[700]),
         ],
      ),
      Row(children:[
            Buttons(text: "7"),
            Buttons(text: "8"),
            Buttons(text:"9"),
            Buttons(text:"×",textcolor: Colors.green),
         ],
      ),
      Row(children:[
            Buttons(text: "4"),
            Buttons(text: "5"),
            Buttons(text:"6"),
            Buttons(text:"-",textcolor: Colors.green[700]),
         ],
      ),
      Row(children:[
            Buttons(text: "1"),
            Buttons(text: "2"),
            Buttons(text:"3"),
            Buttons(text:"+",textcolor: Colors.green[700]),
         ],
      ),
Row(children:[
            Buttons(text: "C",textcolor: Colors.red[700]),
            Buttons(text: "0"),
            Buttons(text:"."),
            Buttons(text:"=",textcolor: Colors.white,backgroundcolor: Colors.green[700]),
         ],
      ),
        ],      
      ),
    );
  }
  
  Widget Buttons({String text,Color textcolor,Color backgroundcolor}){
    
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              height: 70,
      color: backgroundcolor==null?backgroundcolor=Colors.grey[200]:backgroundcolor=backgroundcolor,
      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
      onPressed: (){
        setState(() {
          calc.onpressed(text);
        });;
      },
       child:Text(text,style: TextStyle(color: textcolor,fontSize: 30),)),
          )
    );
  }
  
}