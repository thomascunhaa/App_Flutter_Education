import 'package:flutter/material.dart';

mixin HomePageMixin {
  Widget customAppBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
      child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF4E74F9),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Hello,', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30)),
                  Icon(Icons.circle_notifications, color: Colors.white, size: 40),
                ],
              ),
              const Text(
                'good Morning',
                style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    prefixIcon: Icon(Icons.search, size: 30),
                    suffixText: 'All',
                    suffixStyle: TextStyle(fontSize: 18, color: Colors.grey),
                    suffixIcon: Icon(Icons.arrow_drop_down, size: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNaigatorCustom() {
    List<BottomNavigationBarItem> items = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.black),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.messenger_outlined, color: Colors.black),
        label: 'Search',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.circle_notifications_sharp, color: Colors.black),
        label: 'Settings',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person, color: Colors.black),
        label: 'Settings',
      ),
    ];

    return Container(
      width: 200,
      height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: BottomNavigationBar(
        items: items,
      ),
    );
  }
}
