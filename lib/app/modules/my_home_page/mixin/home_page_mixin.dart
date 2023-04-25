import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
                height: 25,
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
    return Container(
      width: 200,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () => Modular.to.navigate('/my-guardian'),
            child: Row(
              children: const [
                ImageIcon(AssetImage('assets/icons/home.png'), color: Colors.black),
                // SizedBox(width: 12),
                // Text('Home', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          const InkWell(child: ImageIcon(AssetImage('assets/icons/speech-bubble.png'), color: Colors.black)),
          const InkWell(child: ImageIcon(AssetImage('assets/icons/bell.png'), color: Colors.black)),
          const InkWell(child: ImageIcon(AssetImage('assets/icons/user.png'), color: Colors.black)),
        ],
      ),
    );
  }

  Widget gridViewCustom() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: false,
          physics: const BouncingScrollPhysics(), // permitir rolagem
          children: [
            Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/9.jpg'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Accounting ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text('20 Courses ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/10.jpg'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Bioloogy ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text('20 Courses ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/11.jpg'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Photography ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text('25 Courses ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/13.jpg'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Marketing ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text('18 Courses ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/14.jpg'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Finance ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text('20 Courses ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => {},
              child: Card(
                elevation: 2,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/15.jpg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Science  ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          Text('20 Courses ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textHomePage() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Explore categories', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          Text('See all', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue)),
        ],
      ),
    );
  }
}
