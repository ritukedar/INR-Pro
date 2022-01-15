import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/menu/profile/profile.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
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
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Recharge History",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
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
                      child: ListTile(
                        leading: Image.asset(
                          "images/mobile.png",
                          scale: 3,
                        ),
                        title:
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Recharge", style: TextStyle(fontSize: 11)),
                                Text("View Details", style: TextStyle(fontSize: 11,decoration: TextDecoration.underline)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Mobile Recharge", style: TextStyle(fontSize: 11)),
                                Text("300", style: TextStyle(fontSize: 11)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date", style: TextStyle(fontSize: 11)),
                                Text("01-09-2021", style: TextStyle(fontSize: 11)),
                              ],
                            ),
                          ],
                        ),
                      )
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
                        child: ListTile(
                          leading: Image.asset(
                            "images/dth.png",
                            scale: 3,
                          ),
                          title: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Recharge", style: TextStyle(fontSize: 11)),
                                  Text("View Details", style: TextStyle(fontSize: 11,decoration: TextDecoration.underline)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Mobile Recharge", style: TextStyle(fontSize: 11)),
                                  Text("300", style: TextStyle(fontSize: 11)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Date", style: TextStyle(fontSize: 11)),
                                  Text("01-09-2021", style: TextStyle(fontSize: 11)),
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
