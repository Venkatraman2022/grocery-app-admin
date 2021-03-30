import 'package:flutter/material.dart';
import 'package:fthdaily/admin/productsupload.dart';
import 'package:fthdaily/main.dart';

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminPage(),
                    ),
                  );
                },
                color: Theme.of(context).primaryColor,
                child: Text('Admin'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserHome(),
                    ),
                  );
                },
                color: Theme.of(context).primaryColor,
                child: Text('User'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
