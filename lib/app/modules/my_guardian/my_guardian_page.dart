import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyGuardian extends StatefulWidget {
  const MyGuardian({super.key});

  @override
  State<MyGuardian> createState() => _MyGuardianState();
}

class _MyGuardianState extends State<MyGuardian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 70, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Modular.to.navigate('/onboarding-fee'),
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Add a gurdian',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Give acces to another guardian',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal, color: Colors.blue),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Mobile',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(border: InputBorder.none, hintText: '91+9876543210', hintStyle: TextStyle(fontSize: 20, color: Colors.grey), prefixIcon: Icon(Icons.phone_iphone_outlined, size: 25)),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Confirm mobile',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(border: InputBorder.none, hintStyle: TextStyle(fontSize: 20, color: Colors.grey), hintText: '91+9876543210', prefixIcon: Icon(Icons.phone_iphone_outlined, size: 25)),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () => Modular.to.navigate('/onboarding-fee'),
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(top: 410, left: 50),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFF4E74F9)),
                child: Row(
                  children: const [
                    Flexible(
                      child: Center(
                        child: Text(
                          'Give Access',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
