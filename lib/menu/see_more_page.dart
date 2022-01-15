import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';

class seemore extends StatefulWidget {
  const seemore({Key? key}) : super(key: key);

  @override
  _seemoreState createState() => _seemoreState();
}

class _seemoreState extends State<seemore> {
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
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
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
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Recharge",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/mobile.png',scale: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Mobile", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/dth.png',scale: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("DTH", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/fasttag.png',scale: 3.5,
                                    ),
                                    SizedBox(height: 8,),
                                    Text("Fastag", style: TextStyle(fontSize: 11)),
                                  ],
                                ),
                              ),Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/cabletv.png',scale: 3.5,
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Cable TV", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                   ] ),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Utilities",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/cylinder.png',scale: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Cylinder", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/gasconnection.png',scale: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Connection", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(height: 10,),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/water.png',scale: 3.5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Water", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/electricity.png',scale: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Eletricity", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/mobile.png',scale: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Postpaid", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/landline.png',scale: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Broadband", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(height: 10,),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/creditcard.png',scale: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Landline", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/education.png',scale: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Education", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Donations",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/mobile.png',scale: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Donate", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/covidcash.png',scale: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("COVID Cash", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(height: 10,),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/fooddonate.png',scale: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Food Donation", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ),
                      ],
                    )
              ),
            ),
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
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Metro Recharge And Tickets",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Financial Service & Taxes",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/creditcard.png',scale: 3.5,
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Credit Card", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/loanrepayment.png',scale: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Loan", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/insurance.png',scale: 3.5,
                                  ),
                                  SizedBox(height: 8,),
                                  Text("Insurance", style: TextStyle(fontSize: 11)),
                                ],
                              ),
                            ),Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/municiple.png',scale: 3.5,
                                  ),
                                  SizedBox(height: 5,),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Municipal", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
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
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Insurance",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/car.png',scale: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Car", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/car.png',scale: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Bike", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/travel.png',scale: 3.5,
                                  ),
                                  Text("Travel", style: TextStyle(fontSize: 11)),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/lifeinsurance.png',scale: 3.5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Life", style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
