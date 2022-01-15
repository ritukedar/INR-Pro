import 'package:flutter/material.dart';
import 'package:inr_pro/constant/colour.const.dart';
import 'package:inr_pro/menu/wallet/passbook/cashback.dart';
import 'package:inr_pro/menu/wallet/passbook/recharge.dart';
import 'package:inr_pro/menu/wallet/passbook/shopping.dart';
import 'package:inr_pro/menu/wallet/passbook/wallett.dart';

class passbook extends StatelessWidget {
  const passbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("INR PRO"),
          backgroundColor: constant.kPurple,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffB91372), Color(0xff6B0F1A)],
              ),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: "WALLET"),
              Tab(text: "RECHARGE AND BILL"),
              Tab(text: "SHOPPING"),
              Tab(text: "CASHBACK"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [

            wallet(),

                  recharge(),
                  shopping(),
            cashback(),
                ],
              ),
        ),

    );
  }
}
