import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingFee extends StatefulWidget {
  const OnboardingFee({super.key});

  @override
  State<OnboardingFee> createState() => _OnboardingFeeState();
}

class _OnboardingFeeState extends State<OnboardingFee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100, // Posiciona a elipse acima da tela
            left: 50,
            child: Container(
              width: 25,
              height: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, // Define a forma da elipse
                  color: Color(0XFF2CB4EC) // Define a cor da elipse

                  ),
            ),
          ),
          Positioned(
            top: 350, // Posiciona a elipse acima da tela
            left: -25,
            child: Container(
              width: 50,
              height: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, // Define a forma da elipse
                  color: Color(0xFFE14B5A) // Define a cor da elipse

                  ),
            ),
          ),
          Positioned(
            top: 80, // Posiciona a elipse acima da tela
            left: 290,
            child: Container(
              width: 25,
              height: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, // Define a forma da elipse
                  color: Color(0xFFF9D048) // Define a cor da elipse

                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 80, right: 95),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Fees',
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                Text(
                    'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt dolore\nmagna aliqua',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade600)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 240),
            child: Image(
              image: AssetImage('assets/7.png'),
              width: 600,
              height: 600,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 750, left: 50),
            child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF4E74F9)),
                child: Row(
                  children: [
                    Flexible(
                      child: Center(
                        child: TextButton(
                          onPressed: () => Modular.to.navigate('/my-guardian'),
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
