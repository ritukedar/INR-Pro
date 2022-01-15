import 'package:flutter/material.dart';

class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  _walletState createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text("Order ID : 446689", style: TextStyle(fontSize: 12)),
                          ),
                          Text("View Details", style: TextStyle(fontSize: 11,decoration: TextDecoration.underline)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "images/addmoney.png",
                          scale: 2.0,
                        ),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                Text("Add Money to Wallet", style: TextStyle(fontSize: 12)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Recharge", style: TextStyle(fontSize: 11)),
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
                      ),
                    ],
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text("Order ID : 446689", style: TextStyle(fontSize: 12)),
                          ),
                          Text("View Details", style: TextStyle(fontSize: 11,decoration: TextDecoration.underline)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "images/dth.png",
                          scale: 3,
                        ),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                Text("Add Money to Wallet", style: TextStyle(fontSize: 12)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Recharge", style: TextStyle(fontSize: 11)),
                                Text("₹ 300", style: TextStyle(fontSize: 11)),
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
                      ),
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
