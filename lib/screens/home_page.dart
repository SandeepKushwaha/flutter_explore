import 'package:flutter/material.dart';
import 'package:flutter_explore/screens/Drawer/drawer.fragment.form_fields_page.dart';
import 'package:flutter_explore/screens/Drawer/drawer.fragment.home_page.dart';
import 'package:flutter_explore/screens/Drawer/drawer.fragment.image_page.dart';
import 'package:flutter_explore/screens/Drawer/drawer.fragment.text_page.dart';

class DrawerItem {
  final String title;
  final IconData icon;

  DrawerItem({this.title, this.icon});
}

class HomePage extends StatefulWidget {
  final String title;
  final IconData leadingIcon;

  final List<DrawerItem> drawerItems = [
    DrawerItem(title: 'Home', icon: Icons.home),
    DrawerItem(title: 'Text', icon: Icons.text_fields),
    DrawerItem(title: 'Image', icon: Icons.image),
    DrawerItem(title: 'Form Fields', icon: Icons.input),
  ];

  HomePage({Key key, @required this.title, this.leadingIcon}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // indicates the current DrawerItem.
  int _selectedDrawerIndex = 0;

  // Active the DrawerItem for the specific selection
  // i.e. select the current DrawerItem.
  void _onItemSelected(int index) {
    setState(() => _selectedDrawerIndex = index);
  }

  Widget _getDrawerItemPageFragmentWidget(int currentItemPosition) {
    switch (currentItemPosition) {
      case 0:
        return HomePageFragment();
        break;

      case 1:
        return TextPageFragment();
        break;

      case 2:
        return ImagePageFragment();
        break;

      case 3:
        return FormFieldPageFragment();
        break;

      default:
        return Text('Not Page Defined for Current Drawer Item.');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Creating DrawerOptionItems
    var drawerOptions = <Widget>[];
    for (var index = 0; index < widget.drawerItems.length; index++) {
      var drawerItem = widget.drawerItems[index];
      drawerOptions.add(
        ListTile(
          title: Text(drawerItem.title),
          leading: Icon(drawerItem.icon),
          selected: index == _selectedDrawerIndex,
          onTap: () {
            // Update the state of the app
            _onItemSelected(index);
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: (widget.leadingIcon != null) ? Icon(widget.leadingIcon) : null,
        centerTitle: true,
      ),
      body: _getDrawerItemPageFragmentWidget(_selectedDrawerIndex),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0.0),
              margin: EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
              ),
              child: Center(
                child: Text(
                  'Flutter Explore',
                  style: Theme.of(context).textTheme.headline6.apply(
                        color: Colors.white70,
                      ),
                ),
              ),
            ),
            // list item for drawer
            Column(
              // adding our drawerOption in the column as children.
              children: drawerOptions,
            ),
            // ListTile(
            //   title: Text('Form Fields'),
            //   leading: Icon(Icons.input),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.pop(context);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
