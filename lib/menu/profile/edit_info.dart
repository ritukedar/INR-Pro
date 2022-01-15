import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inr_pro/constant/myButton.dart';
import 'package:inr_pro/menu/menu.dart';

class editinfo extends StatefulWidget {
  const editinfo({Key? key}) : super(key: key);

  @override
  _editinfoState createState() => _editinfoState();
}

class _editinfoState extends State<editinfo> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController emailid = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController address = TextEditingController();
  // TextEditingController mobileno = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        SizedBox(
            height: 20,
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User Information :",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Text(
                          "First Name :",
                          style: TextStyle(fontSize: 11),
                        ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: firstname,
                            decoration: InputDecoration(
                              hintText: "FirstName",
                              contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        )
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Last Name :",
                        style: TextStyle(fontSize: 11),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: lastname,
                              decoration: InputDecoration(
                                  hintText: "LastName",
                                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Email ID :",
                        style: TextStyle(fontSize: 11),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: emailid,
                              decoration: InputDecoration(
                                  hintText: "EmailID",
                                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Mobile NO :",
                        style: TextStyle(fontSize: 11),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: mobileno,
                              decoration: InputDecoration(
                                  hintText: "Mobile No",
                                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Address :",
                        style: TextStyle(fontSize: 11),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: address,
                              decoration: InputDecoration(
                                  hintText: "Address",
                                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
        ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 66),
                child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => menuPage()
                      ));
                    },
                    child: MyButton(text: "Edit Info",)),
              ),
      ]),
          )),
    );
  }
}
