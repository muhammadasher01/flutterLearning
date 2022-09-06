import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg";
    return Drawer(
      backgroundColor: Colors.brown,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Google Star"),
              accountEmail: Text("abc@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl
                ),
              ),
            ),
          ),
          ListTile(
            onTap: (){

          },
            leading: Icon(Icons.home, color: Colors.white,),
            title: Text("Home", textScaleFactor: 1.5, style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.email, color: Colors.white,),
            title: Text("Email", textScaleFactor: 1.5, style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.white,),
            title: Text("Phone", textScaleFactor: 1.5, style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
