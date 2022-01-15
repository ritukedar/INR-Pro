import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/constant/myButton.dart';
import 'package:inr_pro/menu/menu.dart';

class sendmoney extends StatefulWidget {
  const sendmoney({Key? key}) : super(key: key);

  @override
  _sendmoneyState createState() => _sendmoneyState();
}

class _sendmoneyState extends State<sendmoney> {
  TextEditingController enterid = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController message = TextEditingController();
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
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                      child: TextFormField(
                        controller: enterid,
                        // initialValue: 'verify ID',style: TextStyle(fontSize: 15,decoration: TextDecoration.underline),
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            // labelText: 'User ID',
                            hintText: "Please Enter ID",hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                      child: TextFormField(
                        controller: amount,
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            // labelText: 'User ID',
                            hintText: "Amount",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                      child: TextFormField(
                        controller: message,
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            // labelText: 'User ID',
                            hintText: "Type Your Message",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 80),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => menuPage()
                            ));
                          },
                          child: MyButton(text: "TRANSFER",)),
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
