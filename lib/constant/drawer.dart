
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {


  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 280,
        child: Drawer(
          elevation: 30,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              _createHeader(),
              // _createDrawerItem(
              //     icon: Icons.person,
              //     text: 'Profile',
              //     // onTap: () =>
              //     //     Navigator.pushReplacementNamed(context, Routes.contacts)
              //   ),
              _createDrawerItem(
                  icon: Icons.person,
                  text: 'Account',
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => orderRequest()));
                  }),
              _createDrawerItem(
                  icon: Icons.person,
                  // icon: Image.asset("images/affiliate.png"),
                  text: 'Affiliate',
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => orderHistory()));
                  }),
              _createDrawerItem(
                  icon: Icons.monetization_on_rounded,
                  text: 'All Payments',
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => paymentHistory()));
                  }),
              _createDrawerItem(
                  icon: Icons.autorenew_rounded,
                  text: 'History',
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => repeateOrder()));
                  }),
              Divider(thickness: 1,),
              // _createDrawerItem(
              //     icon: Icons.notifications_active_sharp, text: 'Notification'),
              _createDrawerItem(
                  icon: Icons.call, text: 'Call us', onTap: () {
                ('tel:+919890969573');
              }),
              _createDrawerItem(
                icon: Icons.chat,
                text: 'Chat With Us',
                onTap: () async {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SplashScreen()),
                  // );
                },
              ),
              Divider(thickness: 1,),
              ListTile(
                title: Row(
                  children: [
                    Text(
                      'Version - ',
                      style: TextStyle(fontSize: 11),
                    ),
                    Text(
                      '0.0.1',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        decoration: BoxDecoration(color: constant.kWhite,
        image: DecorationImage(
          image: new AssetImage('images/qrcode.png'),
          fit: BoxFit.fitHeight,
        ),),
        child: Stack(children: <Widget>[
        ]));
  }

  Widget _createDrawerItem(
      {required IconData icon,
        required String text,
        required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

