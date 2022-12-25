import 'package:flutter/material.dart';
import 'package:validanim_grid/signup.dart';

import 'ProfilePage.dart';

class HomePage extends StatefulWidget {
  final String userName;
  final String userEmail;
  final String ssuserpassword;

  var userpassword;
  // final String userpicture;

  const HomePage({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.userpassword,
    required this.ssuserpassword,
    // required this.userpicture,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(widget.userName),
              accountEmail: Text(widget.userEmail),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(
                      name: widget.userName,
                      email: widget.userEmail,
                      password: widget.ssuserpassword,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
