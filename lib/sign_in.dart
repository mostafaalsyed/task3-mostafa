import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';
import 'package:flutter_application_2/nav_bar_pages/categories_screen.dart';
import 'package:flutter_application_2/nav_bar_pages/main_screen.dart';
import 'package:flutter_application_2/nav_bar_pages/settings_screen.dart';

class SignInPage extends StatefulWidget {
  final String phoneNumber;
  const SignInPage({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  int page_index = 0;
  List<Widget> pages = [MainScreen(), CategoriesScreen(), Settingscreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 2,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(title: 'demo')));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Icon(Icons.exit_to_app), Text("SignOut")],
                ))
          ],
        ),
      ),
      appBar: AppBar(),
      body: pages[page_index],
      bottomNavigationBar: BottomNavigationBar(currentIndex:page_index ,
      onTap: onNavBarTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
      ]),
    );
  }

  onNavBarTapped(int index) {
    page_index = index;
    setState(() {});
  }
}
