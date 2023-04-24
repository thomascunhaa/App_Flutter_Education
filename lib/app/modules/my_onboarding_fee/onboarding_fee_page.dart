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
            left: 330,
            child: Container(
              width: 25,
              height: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, // Define a forma da elipse
                  color: Color(0xFFF9D048) // Define a cor da elipse

                  ),
            ),
          ),
          InkWell(
            onTap: () => Modular.to.navigate('/my-guardian'),
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(top: 60, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Skip',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Fees', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text('Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt dolore\nmagna aliqua', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey.shade600)),
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
          InkWell(
            onTap: () => Modular.to.navigate('/my-guardian'),
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFF4E74F9)),
                    child: Row(
                      children: const [
                        Flexible(
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
