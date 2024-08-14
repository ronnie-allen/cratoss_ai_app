import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/user_info.dart';
import '../screens/settings_screen.dart';
import '../screens/about_screen.dart';
import 'package:page_transition/page_transition.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "User Name",
              style: TextStyle(fontFamily: 'Inter', color: Colors.white),
            ),
            accountEmail: Text(
              "user@example.com",
              style: TextStyle(fontFamily: 'Inter', color: Colors.white70),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color(0xFF000000),
              backgroundImage: AssetImage("assets/cratoss_logo.png"),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF004FC7), // Change the header background color
            ),
          ),
          ListTile(
            leading: Icon(Icons.info, color: Color(0xFF004FC7)),
            title: Text(
              'User Info',
              style: TextStyle(fontFamily: 'Inter', color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: UserInfoScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF004FC7)),
            title: Text(
              'Settings',
              style: TextStyle(fontFamily: 'Inter', color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                      type: PageTransitionType.fade, child: SettingsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline, color: Color(0xFF004FC7)),
            title: Text(
              'About',
              style: TextStyle(fontFamily: 'Inter', color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,PageTransition(
                      type: PageTransitionType.fade, child: AboutScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
