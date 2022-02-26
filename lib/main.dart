import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome app"),
      ),
      body: Container(
        width: 500,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        hoverColor: Colors.purpleAccent, //Not working
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            // DrawerHeader(
            //   child: Text("This is a drawer header"),
            //   decoration: BoxDecoration(
            //     color: Colors.purple,
            //   ),
            // ),
            const UserAccountsDrawerHeader(
              accountName: Text("Mohammad Al-amin"),
              accountEmail: Text("alamincsecu@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fcgp27-1.fna.fbcdn.net/v/t39.30808-6/241068155_4075181592607970_7502407781989318439_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEfQWrtP6XtPSOBvGFkzpXsyhEA8NtikTHKEQDw22KRMfCnRJwKTaLylU-XTLmVZwPCunclWpwNV9VH_QbCJS-B&_nc_ohc=3di8CQZSpxoAX_HDRBl&_nc_ht=scontent.fcgp27-1.fna&oh=00_AT_df-j-_MJpxBHAY4I6k71kmUai0q87dAcpQZ78F-vyjw&oe=621E4092"),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "Md. Al amin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text("Flutter Developer"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text(
                "Email",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: const Text("alamincsecu@gmail.com"),
              trailing: const Icon(Icons.edit),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
