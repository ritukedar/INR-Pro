import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';

class transitiondetails extends StatefulWidget {
  const transitiondetails({Key? key}) : super(key: key);

  @override
  _transitiondetailsState createState() => _transitiondetailsState();
}

class _transitiondetailsState extends State<transitiondetails> {
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
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Order Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Opening Balance",style: TextStyle(fontSize: 16),),
                                ),
                                subtitle:  Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Text("₹ 5053.02",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Closing Balance",style: TextStyle(fontSize: 16),),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Text("₹ 5054.02",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                      child: Text("Transaction ID : 356948", style: TextStyle(fontSize: 15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(thickness: 1,color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text("Shopping Point Credit", style: TextStyle(fontSize: 15)),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("Ammount :", style: TextStyle(fontSize: 15)),
                              Text("Type :", style: TextStyle(fontSize: 15)),
                              Text("Number :", style: TextStyle(fontSize: 15)),
                              Text("Operator", style: TextStyle(fontSize: 15)),
                              Text("Recharge Amount :", style: TextStyle(fontSize: 15)),
                              Text("Date :", style: TextStyle(fontSize: 15)),
                              Text("Time :", style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("₹ 100.00", style: TextStyle(fontSize: 15)),
                              Text("Credit", style: TextStyle(fontSize: 15)),
                              Text("54465565161", style: TextStyle(fontSize: 15)),
                              Text("TATA SKY", style: TextStyle(fontSize: 15)),
                              Text("₹ 100.00", style: TextStyle(fontSize: 15)),
                              Text("03 Sept 2021", style: TextStyle(fontSize: 15)),
                              Text("10:55:26", style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
