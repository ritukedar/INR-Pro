import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/menu/profile/change_password.dart';
import 'package:inr_pro/menu/profile/edit_info.dart';
import 'package:inr_pro/menu/profile/history.dart';
import 'package:inr_pro/menu/profile/personal_info.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0),
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                          "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Name of Person",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "User ID",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
           Row(
             children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     child: Card(
                       elevation: 3,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.all(Radius.circular(10))),
                       child: ListTile(
                         leading: Image.asset(
                           "images/wallet.png",
                           scale: 3,
                         ),
                         title: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("₹ 358.76",style: TextStyle(fontSize: 11),),
                         ),
                         subtitle:  Text("Wallet Balance",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                           borderRadius: BorderRadius.all(Radius.circular(10))),
                       child: ListTile(
                         leading: Image.asset(
                           "images/wallet.png",
                           scale: 3,
                         ),
                         title: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("₹ 358.76",style: TextStyle(fontSize: 11),),
                         ),
                         subtitle: Text("Cashback",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                       ),
                     ),
                   ),
                 ),
               )
             ],
           ),
            // SizedBox(
            //   height: 10,
            // ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: ListTile(
                          leading: Image.asset(
                            "images/wallet.png",
                            scale: 3,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("₹ 358.76",style: TextStyle(fontSize: 11),),
                          ),
                          subtitle: Text("Balance",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: ListTile(
                          leading: Image.asset(
                            "images/wallet.png",
                            scale: 3,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("₹ 10.3",style: TextStyle(fontSize: 11),),
                          ),
                          subtitle: Text("Merchant points",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                children: [
                  Image.asset(
                    "images/person.png",
                    scale: 4,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>personal()));
                      },
                      child: Text(
                        "Personal Information",
                        style: TextStyle(
                            fontSize: 14, decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10),
              child: Row(
                children: [
                  Image.asset(
                    "images/language.png",
                    scale: 4,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: Text(
                      "My Language",
                      style: TextStyle(
                          fontSize: 14, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10),
              child: Row(
                children: [
                  Image.asset(
                    "images/password.png",
                    scale: 4,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>changepass()));
                        },
                      child: Text(
                        "Change Password",
                        style: TextStyle(
                            fontSize: 14, decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10),
              child: Row(
                children: [
                  Image.asset(
                    "images/policies.png",
                    scale: 4,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                    child: Text(
                      "Policies",
                      style: TextStyle(
                          fontSize: 14, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10),
              child: Row(
                children: [
                  Image.asset(
                    "images/history.png",
                    scale: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>history()));
                      },
                      child: Text(
                        "History",
                        style: TextStyle(
                            fontSize: 14, decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
