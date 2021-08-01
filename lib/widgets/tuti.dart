import 'package:flutter/material.dart';

Widget profileActionItems(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildActionButton(context, Icon(Icons.call), "Call"),
      buildActionButton(context, Icon(Icons.message), "Text"),
      buildActionButton(context, Icon(Icons.video_call), "Video"),
      buildActionButton(context, Icon(Icons.email), "Email"),
      buildActionButton(context, Icon(Icons.directions), "Directions"),
      buildActionButton(context, Icon(Icons.attach_money), "Pay"),
    ],
  );
}

Widget buildActionButton(BuildContext context, Icon icon, String nameButton) {
  return Column(
    children: [
      IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: new Text(nameButton),
            ));
          },
          icon: icon),
      Text(nameButton),
    ],
  );
}

Widget emailListTitle() {
  return ListTile(
    leading: Icon(Icons.email),
    title: Text("ivanverduzco11@gmail.com"),
    subtitle: Text("Work"),
  );
}

Widget adressListTitle() {
  return ListTile(
    leading: Icon(Icons.location_on),
    title: Text("359 Av. Sur 12, Mexico City"),
    subtitle: Text("Home"),
    trailing: IconButton(
      icon: Icon(Icons.directions),
      onPressed: () {},
    ),
  );
}

AppBar buildAppBarWidget() {
  return AppBar(
    leading: Icon(Icons.person),
    actions: [
      IconButton(
          onPressed: () {
            print("Contact fav");
          },
          color: Colors.yellow,
          icon: Icon(Icons.star)),
    ],
  );
}

Widget buildBodyWidget(BuildContext context) {
  return ListView(
    children: [
      Column(
        children: [
          Container(
            width: double.infinity,
            child: Image.network(
              "https://avatars.githubusercontent.com/u/76919732?v=4",
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Iván Verduzco",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 8),
            child: profileActionItems(context),
            // Local Theme
            /*
                  child: Theme(
                    data: ThemeData(
                      iconTheme: IconThemeData(
                        color: Colors.indigo.shade800,
                      ),
                    ),
                    child: profileActionItems(),
                  ),*/
          ),
          Divider(
            color: Colors.grey,
          ),
          emailListTitle(),
          Divider(
            color: Colors.grey,
          ),
          adressListTitle()
        ],
      ),
    ],
  );
}
