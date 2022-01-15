import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/constant/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:inr_pro/menu/order_details.dart';
import 'package:inr_pro/menu/transition_details.dart';
import 'package:inr_pro/menu/wallet/add_money.dart';
import 'package:inr_pro/menu/inrprimium.dart';
import 'package:inr_pro/menu/profile/profile.dart';
import 'package:inr_pro/menu/see_more_page.dart';
import 'package:inr_pro/menu/wallet/passbook.dart';
import 'package:inr_pro/menu/wallet/send_money.dart';
import 'package:inr_pro/recharge_successful.dart';

class menuPage extends StatefulWidget {
  const menuPage({Key? key}) : super(key: key);

  @override
  _menuPageState createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  static const bannerImage2 =
      "https://www.payworldindia.com/wp-content/uploads/2021/01/banner-10-bill-payment-1.png";
  static const bannerImage =
      "https://i1.wp.com/momobud.sg/wp-content/uploads/2015/01/Picture4-1537x500.png?resize=1090%2C355";
  List<String> subImage = [bannerImage2, bannerImage, bannerImage2];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'STORE',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'NOTIFICATION',
            ),
          ],
          // currentIndex: _selectedIndex,
          selectedItemColor: constant.kDarkPurple,
          // onTap: _onItemTapped,
        ),
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Wallet",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>addmoney()));
                                      },
                                      child: Image.asset(
                                        "images/addmoney.png",
                                        scale: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Add Money", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    InkWell(
                                    onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>sendmoney()));
                              },
                                child: Image.asset(
                                      "images/sendmoney.png",
                                      scale: 2,
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Send Money", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    InkWell(
                                    onTap: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>addmoney()));
                              },
                                child: Image.asset(
                                      "images/shopping.png",
                                      scale: 2,
                                    ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Shopping", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    InkWell(
                                    onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>passbook()));
                              },
                                child: Image.asset(
                                      "images/passbook.png",
                                      scale: 2,
                                    ),
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text("Passbook", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Affiliate Balance",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Cashback Points",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "images/logo1.png",
                                scale: 4,
                              ),
                              Text(
                                "₹ 180.00",
                                style: TextStyle(fontSize: 12),
                              ),
                              Image.asset(
                                "images/logo2.png",
                                scale: 4,
                              ),
                              Text(
                                "₹ 180.00",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                    itemCount: subImage.length,
                    itemBuilder: (context, index) {
                      return CarouselSlider(
                          items: [
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(subImage[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 180.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ));
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Recharge And Bills",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>seemore()));
                              },
                              child: Text(
                                "See More",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/mobile.png',scale: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Mobile", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/dth.png',scale: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("DTH", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/electricity.png',scale: 3.5,
                                    ),
                                    Text("electricity", style: TextStyle(fontSize: 11)),
                                  ],
                                ),
                              ),Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/loanrepayment.png',scale: 3.5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Loan", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/cylinder.png',scale: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Cylinder", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/gasconnection.png',scale: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Connection", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(height: 10,),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/creditcard.png',scale: 4,
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Credit Card", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/fasttag.png',scale: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Fastag", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/water.png',scale: 3.5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Water", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/insurance.png',scale: 3.5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Insurance", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/municiple.png',scale: 3.5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Municipal", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/hospital.png',scale: 3.5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("Hospital", style: TextStyle(fontSize: 11)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    ]),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/offer.png",
                                scale: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Offers", style: TextStyle(fontSize: 12)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/reward.png",
                                scale: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child:
                                    Text("Rewards", style: TextStyle(fontSize: 12)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                      elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/refer.png",
                              scale: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text("Refer",
                                  style: TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                  ),
                    ),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Offer's And Deails",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            itemCount: subImage.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>inrprimium()));
                                },
                                child: CarouselSlider(
                                    items: [
                                      Container(
                                        margin: EdgeInsets.all(6.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0),
                                          image: DecorationImage(
                                            image: NetworkImage(subImage[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                    options: CarouselOptions(
                                      height: 180.0,
                                      enlargeCenterPage: true,
                                      autoPlay: true,
                                      aspectRatio: 16 / 9,
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enableInfiniteScroll: true,
                                      autoPlayAnimationDuration:
                                      Duration(seconds: 5),
                                      viewportFraction: 0.8,
                                    )),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
