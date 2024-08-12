import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/user_avatar.png'),
            ),
            SizedBox(height: 10),
            Text('User Name', style: TextStyle(fontSize: 20)),
            SizedBox(height: 5),
            Text('user@example.com', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
