import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUri =
        "https://shubham-senani.info/assets/img/jpg/shubham-senani%20profile.jpg";
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 251, 245, 252)),
              margin: EdgeInsets.zero,
              accountName: const Text(
                "Shubham Senani",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: const Text(
                "shubhamsenani9@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUri),
              ),
            )),
        const ListTile(
          leading: Icon(
            CupertinoIcons.home,
          ),
          title: Text("Home"),
        ),
        const ListTile(
          leading: Icon(
            CupertinoIcons.person,
          ),
          title: Text("Profile"),
        ),
        const ListTile(
          leading: Icon(
            CupertinoIcons.mail,
          ),
          title: Text("Email Me"),
        )
      ],
    ));
  }
}
