import 'package:flutter/material.dart';
import 'package:inr_pro/constant/myButton.dart';
import 'package:inr_pro/menu/menu.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  TextEditingController cardno = TextEditingController();
  TextEditingController cardholder = TextEditingController();
  TextEditingController expiry = TextEditingController();
  TextEditingController ccv = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Payment",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
             Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                        child: Text("Card Number",style: TextStyle(
                            fontSize: 11
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                        child: TextFormField(
                          controller: cardno,
                          decoration: InputDecoration(
                              contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              labelStyle: TextStyle(fontWeight: FontWeight.bold),
                              // labelText: 'User ID',
                              hintText: "Card Number",hintStyle: TextStyle(fontSize:14,fontWeight: FontWeight.bold)
                          ),
                        ),
                      ),
                      SizedBox(height: 11,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                        child: Text("Cardholder Name",style: TextStyle(
                            fontSize: 11
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                        child: TextFormField(
                          controller: cardno,
                          decoration: InputDecoration(
                              contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              labelStyle: TextStyle(fontSize:14,fontWeight: FontWeight.bold),
                              // labelText: 'User ID',
                              hintText: "Cardholder Name",hintStyle: TextStyle(fontSize:14,fontWeight: FontWeight.bold)
                          ),
                        ),
                      ),
                      SizedBox(height: 11,),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                              child: Text("Expiry Date",style: TextStyle(
                                  fontSize: 11
                              ),),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                            child: Text("CVV",style: TextStyle(
                                fontSize: 11
                            ),),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 3),
                              child: TextFormField(
                                  controller: cardno,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                                      // labelText: 'User ID',
                                      hintText: "Expiry Date",hintStyle: TextStyle(fontSize:14,fontWeight: FontWeight.bold)
                                  ),
                                ),
                            ),
                          ),
                          Expanded(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal:  12.0,vertical: 3),
                               child: TextFormField(
                                  controller: cardno,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                                      // labelText: 'User ID',
                                      hintText: "CVV",hintStyle: TextStyle(fontSize:14,fontWeight: FontWeight.bold)
                                  ),
                                ),
                             ),
                           ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 90),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => menuPage()
                              ));
                            },
                            child: MyButton(text: "PAY NOW",)),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
    );
  }
}
