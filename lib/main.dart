import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyTextInput()
  ));
}

class MyTextInput extends StatefulWidget{
  @override
  MyTextInputState createState()=>MyTextInputState();

}
class MyTextInputState extends State<MyTextInput>{
  final TextEditingController controller=TextEditingController();

  String result="";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Input Text"),backgroundColor: Colors.blueGrey,),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  hintText: "Text In Here"

                ),
                onSubmitted: (String str){
                  setState(() {
                    result=result+"\n"+str;
                  });
                  controller.text="";
                },
               controller: controller,
              ),
              Text(result)
            ],
          ),),),
    );
  }
}
