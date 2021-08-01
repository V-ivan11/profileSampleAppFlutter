import 'package:flutter/material.dart';
import 'package:pruvas/widgets/tuti.dart';
import 'package:pruvas/themes/themes.dart';

void main() {
  runApp(ContactProfilePage());
}

enum APP_THEME { LIGHT, DARK }

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
            body: buildBodyWidget(context),
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
}
