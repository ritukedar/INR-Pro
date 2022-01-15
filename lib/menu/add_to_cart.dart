import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/menu/checkout.dart';
import 'package:inr_pro/menu/inrprimium.dart';
import 'package:inr_pro/menu/menu.dart';

class addtocart extends StatefulWidget {
  const addtocart({Key? key}) : super(key: key);

  @override
  _addtocartState createState() => _addtocartState();
}

class _addtocartState extends State<addtocart> {
  TextEditingController checkcode = TextEditingController();
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
        ),
        bottomNavigationBar: Container(
          // height: 80,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      child:Ink(
                          child: Text("Buy Now")),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>checkout()));
                  }),
                ),
              ),
        Expanded(
          child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    child:Ink(
                        child: Text("Add To Cart")),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 30,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>menuPage()));
                })),
              ),
            ],
          )
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>inrprimium()));
                  }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "INR Primium",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 60,),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                      }, icon: Icon(Icons.favorite,color: Colors.black,)),
                      IconButton(onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                      }, icon: Icon(Icons.add_shopping_cart_rounded,color: Colors.black,))
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 4,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "images/banner.png",
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
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
                            "Delivery Options",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 20),
                          child: TextFormField(
                            controller: checkcode,
                            decoration: InputDecoration(
                                contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 31.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                                // labelText: 'User ID',
                                suffixIcon: IconButton(onPressed: checkcode.clear, icon: Icon(Icons.arrow_forward_ios)),
                                hintText: "Enter Coupen",hintStyle: TextStyle(fontSize:12,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Delivery Now Sep 06, 2021 To Sep 06,2021",style: TextStyle(fontSize: 11),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Cash on delivery is not available",style: TextStyle(fontSize: 11),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Sold By",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("INREXPERT",style: TextStyle(fontSize: 14),),
                        ),
                      ],
                    ),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Product Specification",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("1] Absorb and transfer non particulate radiation waves by victimization special material and cut back portable radiation on the human brain. "
                                "2] Extend the service lifetime of reversible battery 2 to 3 times. "
                                "3] Fast charger and save five hundredth of charging time. "
                                "4] Extend the service lifetime of reversible battery 2 to 3 times.", style: TextStyle(fontSize: 11)),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Product Description",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("INRCHIP is Unique Radiation protection chip that protects you from the harmful effect of Electromagnetic Radiation (EMR) emanating from your mobile phone. The INR CHIP has been tested extensively in india and abroad by reputed medical institutions.", style: TextStyle(fontSize: 11)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
