// import 'package:flutter/material.dart';
// import 'package:fthdaily/admin/productsupload.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Color(0xFF7653A3),
//         accentColor: Color(0xFF7653A3),
//         iconTheme:
//             Theme.of(context).iconTheme.copyWith(color: Color(0xFF9B63DC)),
//         textTheme:
//             Theme.of(context).textTheme.apply(bodyColor: Color(0xFF707070)),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: AdminPage(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:fthdaily/About_Us/About_us.dart';
import 'package:fthdaily/Bottom_nav_bar/store.dart';
import 'package:fthdaily/Icons/Icons.dart';
import 'package:fthdaily/Bottom_nav_bar/Account.dart';
import 'package:fthdaily/Bottom_nav_bar/delivery_status.dart';
import 'package:fthdaily/Bottom_nav_bar/plans.dart';
// import 'package:fthdaily/Bottom_nav_bar/store.dart';
import 'package:fthdaily/Bottom_nav_bar/wallet.dart';
import 'package:fthdaily/Offers/Offers.dart';
import 'package:fthdaily/Offers/offers_mainscreen.dart';
import 'package:fthdaily/Support/chat_bot.dart';
import 'package:fthdaily/Transaction_History/transaction_history.dart';
import 'package:fthdaily/Transaction_History/wallet_balance.dart';
import 'package:fthdaily/Vegetables/vegetables.dart';
import 'package:fthdaily/admin/adminselection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF7653A3),
        accentColor: Color(0xFF7653A3),
      ),
      home: SelectionPage(),
    );
  }
}

class UserHome extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  int currentTab = 0;

  final List<Widget> screens = [
    Store(),
    Plans(),
    WalletPage(),
    Account(),
    // DeliveryStatus(),
  ];

  Widget currentScreen = Store();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          MyFlutterApp.truck,
          color: currentTab == 4 ? Color(0xFF7653A3) : Colors.grey,
        ),
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            currentScreen = DeliveryStatus();
            currentTab = 4;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Store();
                        currentTab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.store,
                          color:
                              currentTab == 0 ? Color(0xFF7653A3) : Colors.grey,
                        ),
                        Text(
                          'Store',
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Color(0xFF7653A3)
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Plans();
                        currentTab = 1;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.event_note_outlined,
                          color:
                              currentTab == 1 ? Color(0xFF7653A3) : Colors.grey,
                        ),
                        Text(
                          'Plans',
                          style: TextStyle(
                              color: currentTab == 1
                                  ? Color(0xFF7653A3)
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = WalletPage();
                        currentTab = 2;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_balance_wallet,
                          color:
                              currentTab == 2 ? Color(0xFF7653A3) : Colors.grey,
                        ),
                        Text(
                          'Wallet',
                          style: TextStyle(
                              color: currentTab == 2
                                  ? Color(0xFF7653A3)
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Account();
                        currentTab = 3;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.supervisor_account_outlined,
                          color:
                              currentTab == 3 ? Color(0xFF7653A3) : Colors.grey,
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Color(0xFF7653A3)
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
