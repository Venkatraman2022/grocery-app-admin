import 'package:flutter/material.dart';
import 'package:fthdaily/About_Us/About_us.dart';
import 'package:fthdaily/Bottom_nav_bar/wallet.dart';
import 'package:fthdaily/Offers/offers_mainscreen.dart';
import 'package:fthdaily/Support/chat_bot.dart';
import 'package:fthdaily/Transaction_History/transaction_history.dart';
import 'package:fthdaily/coupons.dart';
import 'package:fthdaily/rateus.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Account'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: size.height * 0.024,
                  color: Color(
                    0xFF7653A3,
                  ),
                ),
              ),
              leading: Icon(Icons.person, size: size.height * 0.032),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Wallet',
                style: TextStyle(
                  fontSize: size.height * 0.024,
                  color: Color(
                    0xFF7653A3,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WalletPage()));
              },
              leading:
                  Icon(Icons.account_balance_wallet, size: size.height * 0.032),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Transaction History',
                style: TextStyle(
                  fontSize: size.height * 0.024,
                  color: Color(
                    0xFF7653A3,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TransactionHistory()));
              },
              leading: Icon(Icons.history, size: size.height * 0.032),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Offers',
                style: TextStyle(
                  fontSize: size.height * 0.024,
                  color: Color(
                    0xFF7653A3,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OffersMainScreen()));
              },
              leading: Icon(Icons.local_offer, size: size.height * 0.032),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageDialogflowV2(),
                  ),
                );
              },
              title: Text(
                'Support',
                style: TextStyle(
                  fontSize: size.height * 0.024,
                  color: Color(
                    0xFF7653A3,
                  ),
                ),
              ),
              leading: Icon(Icons.account_circle, size: size.height * 0.032),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Coupons',
                style: TextStyle(
                  fontSize: size.height * 0.024,
                  color: Color(
                    0xFF7653A3,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CouponsPage(),
                  ),
                );
              },
              leading: Icon(Icons.ac_unit, size: size.height * 0.032),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RateUsPage(),
                  ),
                );
              },
              title: Text(
                'Rate Us',
                style: TextStyle(
                  fontSize: size.height * 0.024,
                  color: Color(
                    0xFF7653A3,
                  ),
                ),
              ),
              leading: Icon(Icons.grade, size: size.height * 0.032),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUs(),
                  ),
                );
              },
              title: Text(
                'About Us',
                style: TextStyle(
                  fontSize: size.height * 0.024,
                  color: Color(
                    0xFF7653A3,
                  ),
                ),
              ),
              leading: Icon(
                Icons.info_rounded,
                size: size.height * 0.032,
              ),
            ),
            Divider(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Version 1.0.0'),
            )
          ],
        ),
      ),
    );
  }
}
