import 'package:flutter/material.dart';

import 'mixin/home_page_mixin.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomePageMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              customAppBar(),
              textHomePage(),
              gridViewCustom(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: bottomNaigatorCustom(),
    );
  }
}
