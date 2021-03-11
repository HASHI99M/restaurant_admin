import 'package:flutter/material.dart';
import 'package:restaurant_admin/const.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Hashim',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                'zmalek2018@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {},
              leading: Icon(
                Icons.home,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Categories'),
              onTap: () {},
              leading: Icon(
                Icons.restaurant,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
            Theme(
              data: theme,
              child: ExpansionTile(
                title: Text('Account'),
                leading: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                children: [
                  ListTile(
                    title: Text('Change personal settings'),
                    onTap: () {},
                    leading: Icon(
                      Icons.settings,
                      color: kPrimaryColor,
                    ),
                    trailing: Icon(
                      Icons.navigate_next_sharp,
                      size: 24,
                    ),
                  ),
                  ListTile(
                    title: Text('change Password'),
                    onTap: () {},
                    leading: Icon(
                      Icons.vpn_key,
                      color: kPrimaryColor,
                    ),
                    trailing: Icon(
                      Icons.navigate_next_sharp,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Favorite'),
              onTap: () {},
              leading: Icon(
                Icons.favorite,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('List Food'),
              onTap: () {},
              leading: Icon(
                Icons.fastfood,
                color: kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Customer orders'),
              onTap: () {},
              leading: Icon(
                Icons.speaker_notes,
                color:kPrimaryColor,
              ),
              trailing: Icon(
                Icons.navigate_next_sharp,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  onClick({BuildContext context, String routeName}) {
    Navigator.pop(context);
    Navigator.pushNamed(context, routeName);
  }
}
