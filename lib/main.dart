import 'package:flutter/material.dart';

void main() {
  runApp(ContactProfilePage());
}

enum APP_THEME { LIGHT, DARK }

class MyAppThemes {
  static ThemeData appThemeLight() {
    return ThemeData(
      //AppTheme Master
      brightness: Brightness.light,
      //AppBarTheme
      appBarTheme: AppBarTheme(
        color: Colors.indigo.shade800,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      //Theme for Icons
      iconTheme: IconThemeData(
        color: Colors.indigo.shade800,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }

  static ThemeData appThemeDark() {
    return ThemeData(
      //AppTheme Master
      brightness: Brightness.dark,
      //AppBarTheme
      appBarTheme: AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      //Theme for Icons
      iconTheme: IconThemeData(
        color: Colors.orange,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    );
  }
}

class ContactProfilePage extends StatefulWidget {
  @override
  _ContactProfilePageState createState() => _ContactProfilePageState();
}

class _ContactProfilePageState extends State<ContactProfilePage> {
  var currentTheme = APP_THEME.LIGHT;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: currentTheme == APP_THEME.DARK
            ? MyAppThemes.appThemeDark()
            : MyAppThemes.appThemeLight(),
        home: Scaffold(
            appBar: buildAppBarWidget(),
            body: buildBodyWidget(),
            floatingActionButton: FloatingActionButton(
              child: IconButton(
                icon: Icon(Icons.threesixty),
                onPressed: () {
                  setState(() {
                    currentTheme == APP_THEME.DARK
                        ? currentTheme = APP_THEME.LIGHT
                        : currentTheme = APP_THEME.DARK;
                  });
                },
              ),
              onPressed: () {},
            )));
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
            icon: Icon(Icons.star_border)),
      ],
    );
  }

  Widget buildBodyWidget() {
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
              child: profileActionItems(),
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

  Widget profileActionItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildActionButton(Icon(Icons.call), "Call"),
        buildActionButton(Icon(Icons.message), "Text"),
        buildActionButton(Icon(Icons.video_call), "Video"),
        buildActionButton(Icon(Icons.email), "Email"),
        buildActionButton(Icon(Icons.directions), "Directions"),
        buildActionButton(Icon(Icons.attach_money), "Pay"),
      ],
    );
  }

  Widget buildActionButton(Icon icon, String nameButton) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: icon),
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
}
