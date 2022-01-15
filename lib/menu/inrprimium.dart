import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/menu/add_to_cart.dart';
import 'package:inr_pro/menu/profile/profile.dart';

class inrprimium extends StatefulWidget {
  const inrprimium({Key? key}) : super(key: key);

  @override
  _inrprimiumState createState() => _inrprimiumState();
}

class _inrprimiumState extends State<inrprimium> {
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
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
            }, icon: Icon(Icons.person,color: Colors.white,))
          ],
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>addtocart()));
                    },
                    child: Card(
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: Image.asset(
                              "images/banner.png",
                              scale: 2.0,
                            ),
                            title: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("INR PRIMIUM", style: TextStyle(fontSize: 11)),
                                    Text("₹ 300", style: TextStyle(fontSize: 11)),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Price", style: TextStyle(fontSize: 11)),
                                    Text("1", style: TextStyle(fontSize: 11)),
                                  ],
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
