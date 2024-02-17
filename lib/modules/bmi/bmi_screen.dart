import 'dart:math';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bmi_result/bmi_result.dart';

class bmi_screen extends StatefulWidget {


  @override
  State<bmi_screen> createState() => _bmi_screenState();
}

class _bmi_screenState extends State<bmi_screen> {
  bool isMale= true;
  double height=120;
  int age= 18;
  int weight =40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text(
            "BMI_Calculator"
            ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState((){
                          isMale=true;


                        });


                      },
                      child: Container(

                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              //new Image.asset('images/p8.png', width: 100.0, height: 100.0)
                                image: AssetImage("assets/images/male.png"),
                              height: 90,
                              width: 90,

                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,

                                fontSize: 25,
                              ),
                            ),



                          ],
                        ),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.blue:Colors.grey[500],
                          borderRadius: BorderRadius.circular(10)


                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                       setState((){
                         isMale=false;
                       });



                      },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Image(
                               image: AssetImage('assets/images/female.png'),
                             height: 90,
                             width: 90,
                           ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,

                                fontSize: 25,
                              ),
                            ),



                          ],
                        ),
                        decoration: BoxDecoration(
                            color: !isMale ? Colors.blue :Colors.grey[500] ,
                            borderRadius: BorderRadius.circular(10)


                        ),
                      ),
                    ),
                  ),

                ],

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color:Colors.grey[500],
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT"
                    ,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,


                      ),
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${height.round()}"
                          ,style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,


                          ),
                        ),
                        Text("CM"
                          ,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,


                          ),
                        ),
                      ],
                    ),
                    Slider(value: height,
                        min: 80,
                        max: 220,


                        onChanged: (value){
                      setState((){
                        height=value;

                      });



                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration:   BoxDecoration(
                    color:Colors.grey[500],
    borderRadius: BorderRadius.circular(10),
    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEIGHT"
                            ,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,


                            ),
                          ),
                          Text("${weight}"
                            ,style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,


                            ),
                          ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           FloatingActionButton(onPressed: (){
                             setState((){

                               weight--;

                             });

                           },
                             mini: true,
                             child:Icon( Icons.remove),
                             heroTag: "w--",


                           ),
                           FloatingActionButton(onPressed: (){
                             setState((){

                               weight++;

                             });

                           },
                             mini: true,
                             child:Icon( Icons.add),
                             heroTag: "w++",

                           )

                         ],
                       ),



                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      decoration:   BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("AGE"
                            ,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,


                            ),
                          ),
                          Text("${age}"
                            ,style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,


                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState((){

                                  age--;
                                });

                              },
                                mini: true,
                                child:Icon( Icons.remove),
                                heroTag: "a--",

                              ),
                              FloatingActionButton(onPressed: (){


                                setState((){

                                  age++;
                                });
                              },
                                mini: true,
                                child:Icon( Icons.add),
                                heroTag: "a++",

                              )

                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
            ,
          ),
          Container(

            height: 55,
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(onPressed: (){

              double result =( weight/pow(height/100,2));
              print(result.round());
              Navigator.push(context,
              MaterialPageRoute(builder:
              (context)=>bmi_result(isMale: isMale,age: age, res:result.round() ,),

              ),

              );



            },

              child: Text(
                  "Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                ),

              ),


            ),
          )




        ],

      ),



    );
  }
}
