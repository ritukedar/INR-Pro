import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inr_pro/constant/myButton.dart';
import 'package:inr_pro/menu/profile/edit_info.dart';

class personal extends StatefulWidget {
  const personal({Key? key}) : super(key: key);

  @override
  _personalState createState() => _personalState();
}

class _personalState extends State<personal> {
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
          body: Column(children: [
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "First Name :",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Ashu",
                        style: TextStyle(fontSize: 11,decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Last Name :",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "patil",
                      style: TextStyle(fontSize: 11,decoration: TextDecoration.underline),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Email ID :",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "Ashupatil@gmail.com",
                      style: TextStyle(fontSize: 11,decoration: TextDecoration.underline),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Mobile NO :",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "1010101010",
                      style: TextStyle(fontSize: 11,decoration: TextDecoration.underline),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Address :",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "",
                      style: TextStyle(fontSize: 11,decoration: TextDecoration.underline),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 66),
          child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => editinfo()));
              },
              child: MyButton(
                text: "Edit Info",
              )),
        ),
      ])),
    );
  }
}
