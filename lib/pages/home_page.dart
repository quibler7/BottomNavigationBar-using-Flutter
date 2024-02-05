// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar for the aesthetics
      appBar: AppBar(
        title: Text("quibler7"),
      ),

      // drawer for the aesthetics
      drawer: Drawer(),

      // bottomnav bar -we will be using Gnav bar here
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            gap: 10, // gap -> distance between icon and text in bottom nav
            activeColor: Colors.white,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.favorite_border,
                text: "Likes",
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
              ),
            ],
          ),
        ),
      ),

    );
  }
}
