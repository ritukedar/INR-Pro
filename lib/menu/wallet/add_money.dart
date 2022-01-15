import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/constant/myButton.dart';
import 'package:inr_pro/menu/menu.dart';

class addmoney extends StatefulWidget {
  const addmoney({Key? key}) : super(key: key);

  @override
  _addmoneyState createState() => _addmoneyState();
}

class _addmoneyState extends State<addmoney> {
  TextEditingController enteramount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffB91372), Color(0xff6B0F1A)],
            ),
          ),
        ),
        title: Text("INR PRO"),
        backgroundColor: constant.kPurple,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 10),
                      child: TextFormField(
                        controller: enteramount,
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            // labelText: 'User ID',
                            hintText: "Payment Amount",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child:  RaisedButton(
                                child:Ink(
                                    child: Text("+100")),
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 30,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                onPressed: () {}),
                          ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: RaisedButton(
                                child:Ink(
                                    child: Text("+200")),
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 30,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                onPressed: () {}),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child:RaisedButton(
                                child:Ink(
                                    child: Text("+300")),
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 30,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                onPressed: () {}),
                          ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 80),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => menuPage()));
                          },
                          child: MyButton(
                            text: "Add Money",
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
