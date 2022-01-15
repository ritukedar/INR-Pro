import 'package:flutter/material.dart';
import 'package:inr_pro/constant/myButton.dart';
import 'package:inr_pro/menu/profile/personal_info.dart';
import 'package:inr_pro/menu/profile/profile.dart';

class changepass extends StatefulWidget {
  const changepass({Key? key}) : super(key: key);

  @override
  _changepassState createState() => _changepassState();
}

class _changepassState extends State<changepass> {
  TextEditingController oldpassword = TextEditingController();
  TextEditingController newpassword = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                child: Text("Old Password",style: TextStyle(
                    fontSize: 12
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                child: TextFormField(
                  controller: oldpassword,
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 31.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      labelText: 'Password',
                      hintText: "Password",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 31),
                child: Text("New Password",style: TextStyle(
                    fontSize: 12
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                child: TextFormField(
                  controller: newpassword,
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 31.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      labelText: 'Password',
                      hintText: "Password",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 31),
                child: Text("New Password",style: TextStyle(
                    fontSize: 12
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                child: TextFormField(
                  controller: confirmpassword,
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 31.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      labelText: 'Password',
                      hintText: "Password",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 80),
                child: Container(
                  width: 200,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => profile()
                        ));
                      },
                      child: MyButton(text: "Change Password",)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
