import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/constant/myButton.dart';
import 'package:inr_pro/payment.dart';

class checkout extends StatefulWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  _checkoutState createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  late String option;
  late int optionvalue;
  late String onChanged;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery Address",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Ashu Patil",
                          style: TextStyle(
                              fontSize: 11),
                        ),
                        Text(
                          "303, City tower , near boat club road",
                          style: TextStyle(
                              fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub Total :", style: TextStyle(fontSize: 11)),
                          Text("354.0", style: TextStyle(fontSize: 11)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cashback Points",
                              style: TextStyle(fontSize: 11)),
                          Text("0.0", style: TextStyle(fontSize: 11)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sub Total",
                                style: TextStyle(fontSize: 11)),
                          ),
                          Text("0.0", style: TextStyle(fontSize: 11)),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total", style: TextStyle(fontSize: 11)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("354.0", style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Card(
            //   elevation: 5,
            //   child:  Container(
            //     child: RadioListTile(
            //       title: Text(
            //         "CASHBACK",
            //         style: TextStyle(fontSize: 20.0),
            //       ),
            //       activeColor: Colors.black,
            //       value: "354.0",
            //       groupValue: "",
            //       onChanged: onChanged,
            //     ),
            //   ),
            // )
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 66),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => payment()
                    ));
                  },
                  child: MyButton(text: "Proceed To Pay",)),
            ),
          ],
        ),
      ),
    );
  }
}