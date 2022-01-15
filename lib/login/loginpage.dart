import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inr_pro/constant/myButton.dart';
import 'package:inr_pro/login/registrationPage.dart';
import 'package:inr_pro/menu/menu.dart';
import 'package:inr_pro/menu/profile/profile.dart';
import 'package:inr_pro/menu/see_more_page.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController userId = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Text("INR Expert",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),),
                Text("Tag line",style: TextStyle(
                    fontSize: 14
                ),),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                      child: Text("User ID",style: TextStyle(
                          fontSize: 11
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                      child: TextFormField(
                        controller: userId,
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 31.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            labelText: 'User ID',
                            hintText: "User ID",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                    SizedBox(height: 11,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                      child: Text("Password",style: TextStyle(
                          fontSize: 11
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                      child: TextFormField(
                        controller: userId,
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
                    ],
                ),
                SizedBox(height: 10,),
                // RaisedButton(
                //     padding: EdgeInsets.symmetric(vertical: 10,horizontal: 66),
                //     color: Colors.purple,child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 18),),
                //     onPressed: (){
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>menuPage()));
                //     },
                //     shape: RoundedRectangleBorder(
                //     borderRadius: new BorderRadius.circular(30.0))),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 66),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => menuPage()
                        ));
                      },
                      child: MyButton(text: "LOGIN",)),
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>registration()));
                    },
                    child: Text("New User?   Sign Up")),
                // SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 90),

                      color: Colors.white,child: Text("Login with Google",style: TextStyle(color: Colors.black,fontSize: 18),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>menuPage()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                ),
                // SizedBox(height: 10,),
                Container(
                  height: 280,
                  width: 350,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(image: new AssetImage("images/loginImage.png"),
                        fit: BoxFit.fill),
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
