import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.inbox_rounded,
              text: 'Inbox',
              onTap: () {
                Navigator.pushNamed(context, '/inbox');
              }),
          _drawerItem(
              icon: Icons.send,
              text: 'Outbox',
              onTap: () {
                Navigator.pushNamed(context, '/outbox');
              }),
          _drawerItem(
              icon: Icons.error,
              text: 'Spam',
              onTap: () {
                Navigator.pushNamed(context, '/Spam');
              }),
          _drawerItem(icon: Icons.question_answer, text: 'Forums', onTap: () {}),
          _drawerItem(icon: Icons.announcement, text: 'Promos', onTap: () {}),
          _drawerItem(icon: Icons.photo, text: 'Galery', onTap: () {}),
          Divider(
            height: 30,
            thickness: 1,
          ),
          _drawerItem(
            icon: (Icons.logout),
            text: 'LogOut',
            onTap: () => print('Tap to Deleted Menu'),
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage("assets/images/23.jpeg"), fit: BoxFit.cover),
    ),
    decoration: BoxDecoration(
        gradient: LinearGradient(
      colors: [
        Color(0xFF701edb),
        Color(0xFF873bcc),
        Color(0xFFfe4a97),
        Color(0xFFe17763),
        Color(0xFF68998c),
      ],
    )),
    accountName: Text('Nanda Awimbi Yahya'),
    accountEmail: Text('nandaawimbi9621@gmail.com'),
  );
}

Widget _drawerItem(
    {required IconData icon,
    //required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
