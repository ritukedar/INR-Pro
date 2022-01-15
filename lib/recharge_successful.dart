import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/menu/menu.dart';

class rechargesuccess extends StatefulWidget {
  const rechargesuccess({Key? key}) : super(key: key);

  @override
  _rechargesuccessState createState() => _rechargesuccessState();
}

class _rechargesuccessState extends State<rechargesuccess> {
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
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>menuPage()));
          }, icon: Icon(Icons.person,color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/rechargesuccess.png",scale: 4,),
              ),
              SizedBox(height: 20,),
             Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Recharge Payment Status : Success",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                 ),
               ],
             ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       children: [
                         Text("Ammount :", style: TextStyle(fontSize: 15)),
                         Text("Mobile No :", style: TextStyle(fontSize: 15)),
                         Text("Order No :", style: TextStyle(fontSize: 15)),
                         Text("Date", style: TextStyle(fontSize: 15)),
                       ],
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("₹ 100.00", style: TextStyle(fontSize: 15)),
                          Text("1010101010", style: TextStyle(fontSize: 15)),
                          Text("9645", style: TextStyle(fontSize: 15)),
                          Text("08 Sep 2021", style: TextStyle(fontSize: 15)),
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
    );
  }
}
