import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmi_result extends StatelessWidget {
 final bool isMale;
  final int age;
  final int res;

  bmi_result({
    required this.isMale,
    required this.age,
    required this.res
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);


            },
            icon: Icon(Icons.keyboard_arrow_left),),
        title: Center(child: Text("BMI_Result")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Gender : ${isMale ? 'Male':'Female' }",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,


              ),



            ),
            Text("Age : ${age}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,


              ),



            ),
            Text("Result: ${res}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,


              ),



            ),


          ],


        ),
      ),


    );
  }
}
