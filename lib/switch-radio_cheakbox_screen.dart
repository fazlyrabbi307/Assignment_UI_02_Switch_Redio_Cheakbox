
import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool status = false;
  bool status1 = false;
  int selection = 1;
  bool onSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Grouped Buttton Example",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Colors.white),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Basic Cheakbox Group",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Colors.black),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30,),
              Checkbox(
                activeColor: Colors.blue,
                  value: status, onChanged: (of){
                status = of!;
                setState(() {
                });

              }),
              Text("Sunday",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black87),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30,),
              Checkbox(
                  value: status1, onChanged: (of){
                status1 = of!;
                setState(() {
                });

              }),
              Text("Monday",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black87),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30,),
              Checkbox(
                  activeColor: Colors.blue,
                  value: status, onChanged: (of){
                status = of!;
                setState(() {
                });

              }),
              Text("Tuesday",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black87),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30,),
              Checkbox(
                  value: status1, onChanged: (of){
                status1 = of!;
                setState(() {
                });

              }),
              Text("Wednesday",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black87),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30,),
              Checkbox(
                  activeColor: Colors.blue,
                  value: status, onChanged: (of){
                status = of!;
                setState(() {
                });

              }),
              Text("Thursday",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black87),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30,),
              Checkbox(
                  value: status1, onChanged: (of){
                status1 = of!;
                setState(() {
                });

              }),
              Text("Friday",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black87),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30,),
              Checkbox(
                  activeColor: Colors.blue,
                  value: status, onChanged: (of){
                status = of!;
                setState(() {
                });

              }),
              Text("Saturday",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black87),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Basic RadioButton Group",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Colors.black),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30,),
              Radio(
                activeColor: Colors.blue,
                value: 1,groupValue: selection,onChanged: (r){
                selection = 1;
                setState(() {
                });
              },),
              Text("Option 1",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black87),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 30,),
              Radio(
                activeColor: Colors.blue,
                value: 2,groupValue: selection,onChanged: (r){
                selection = 2;
                setState(() {
                });
              },),
              Text("Option 2",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black87),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.all(Radius.circular(7)), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // ছায়ার রঙ
                    spreadRadius: 1,  // ছায়া কতটা ছড়াবে
                    blurRadius: 23,    // ছায়া কতটা নরম হবে
                    offset: Offset(1, 1), // (x, y) অবস্থান; নিচে নামাতে y বাড়াও
                  ),
                ],
              ),
              height: 90,
              width: double.infinity,
              child: Row(
                spacing: 5,
                children: [
                  SizedBox(width: 22,),
                  Icon(Icons.lightbulb_outline,size: 30,),
                  Text("Lights",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Switch(
                        activeTrackColor:Colors.blue,
                        value:  onSwitch, onChanged: (deactive){
                      onSwitch = deactive;
                    setState(() {
                    });
                    }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
