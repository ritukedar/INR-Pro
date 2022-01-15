import 'package:flutter/material.dart';
import 'package:inr_pro/constant/myButton.dart';
import 'package:inr_pro/login/loginpage.dart';
import 'package:inr_pro/menu/menu.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController sponsorid = TextEditingController();
  TextEditingController emailid = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: Text("First Name",style: TextStyle(
                        fontSize: 11
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: TextFormField(
                      controller: firstname,
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 31.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          labelText: 'First Name',
                          hintText: "First Name",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),
                  ),
                  SizedBox(height: 11,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: Text("Last Name",style: TextStyle(
                        fontSize: 11
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: TextFormField(
                      controller: lastname,
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 31.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          labelText: 'Last Name',
                          hintText: "Last Name",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),
                  ),
                  SizedBox(height: 11,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: Text("Email ID",style: TextStyle(
                        fontSize: 11
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: TextFormField(
                      controller: emailid,
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 31.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          labelText: 'Email ID',
                          hintText: "Email ID",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),
                  ),
                  SizedBox(height: 11,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: Text("Mobile Number",style: TextStyle(
                        fontSize: 11
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: TextFormField(
                      controller: mobileno,
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 31.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          labelText: 'Mobile Number',
                          hintText: "Mobile Number",hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),
                  ),
                  SizedBox(height: 11,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: Text("Sponsor ID",style: TextStyle(
                        fontSize: 11
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 31),
                    child: TextFormField(
                      controller: sponsorid,
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 31.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          labelText: 'Sponsor ID',
                          hintText: "Sponsor ID",hintStyle: TextStyle(fontWeight: FontWeight.bold)
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
                      controller: password,
                      decoration: InputDecoration(
                          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 31.0),
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
            ),
            SizedBox(height: 11,),
            // RaisedButton(
            //     padding: EdgeInsets.symmetric(vertical: 10,horizontal: 66),
            //     color: Colors.purple,child: Text("SignUp",style: TextStyle(color: Colors.white,fontSize: 18),),
            //     onPressed: (){
            //       Navigator.push(context, MaterialPageRoute(builder: (context)=>menuPage()));
            //     },
            //     shape: RoundedRectangleBorder(
            //         borderRadius: new BorderRadius.circular(30.0))),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => loginPage()
                  ));
                },
                child: MyButton(text: "SignUp",)),
            SizedBox(height: 10,),
            Container(
              height: 200,
              width: 400,
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage("images/registration.png"),
                    fit: BoxFit.fill),
              ),
            )
          ],
        ),
      ),
    );
  }
}
