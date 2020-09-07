import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  TextEditingController no1=TextEditingController();
  TextEditingController no2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: no1,
                decoration: InputDecoration(
                  hintText: "Enter First Number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.filter_1)
                ),
              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: no2,
                decoration: InputDecoration(
                  hintText: "Enter Second Number",
                  border:OutlineInputBorder(),
                  prefixIcon: Icon(Icons.filter_2)
                ),
              ),
              SizedBox(height: 10.0),
              RaisedButton(onPressed: (){
                var n1=int.parse(no1.text);
                var n2=int.parse(no2.text);
                var n=n1+n2;
                print(n);
              },
              child: Text("Add"),),
              SizedBox(height: 5.0),
              RaisedButton(onPressed: (){
                var n1=int.parse(no1.text);
                var n2=int.parse(no2.text);
                var n=n1-n2;
                print(n);
              },
              child: Text("Sub")),
              SizedBox(height: 5.0,),
              RaisedButton(onPressed: (){
                var n1=int.parse(no1.text);
                var n2=int.parse(no2.text);
                var n=n1*n2;
                print(n);
              },
              child: Text("Mul"),),
              SizedBox(height: 5.0,),
              RaisedButton(onPressed: (){
                var n1=int.parse(no1.text);
                var n2=int.parse(no2.text);
                var n=n1/n2;
                print(n);
              },
              child: Text("Div"),)
            ],
          ),
        ),
      ),
    );
  }
}
