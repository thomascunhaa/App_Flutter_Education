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
      body: Column(
        children: [
          customAppBar(),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Explore categories', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                Text('See all', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue)),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNaigatorCustom(),
    );
  }
}
