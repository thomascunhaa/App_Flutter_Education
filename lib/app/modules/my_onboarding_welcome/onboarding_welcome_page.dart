import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingWelcome extends StatefulWidget {
  const OnboardingWelcome({super.key});

  @override
  State<OnboardingWelcome> createState() => _OnboardingWelcomeState();
}

class _OnboardingWelcomeState extends State<OnboardingWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30, // Posiciona a elipse acima da tela
            right: -120,
            child: Container(
              width: 200,
              height: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, // Define a forma da elipse
                  color: Color(0xFFF9D048) // Define a cor da elipse

                  ),
            ),
          ),
          Positioned(
            top: 200, // Posiciona a elipse acima da tela
            left: 50,
            child: Container(
              width: 180,
              height: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, // Define a forma da elipse
                  color: Color(0xFFE14B5A) // Define a cor da elipse

                  ),
            ),
          ),
          Positioned(
            top: 100, // Posiciona a elipse acima da tela
            left: 70,
            child: Container(
              width: 25,
              height: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, // Define a forma da elipse
                  color: Color(0xFFF9D048) // Define a cor da elipse

                  ),
            ),
          ),
          Positioned(
            top: 320, // Posiciona a elipse acima da tela
            left: 305,
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
            left: -60,
            top: 30, // Posiciona a elipse acima da tela
            child: Container(
              width: 100,
              height: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, // Define a forma da elipse
                  color: Color(0xFF5C5BFD) // Define a cor da elipse
                  ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/8.png'),
                width: 500,
                height: 400,
                fit: BoxFit.cover,
              ),
              const Text(
                'Welcome To \n    Learner',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor\n      incididunt dolore magna aliqua',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => Modular.to.navigate('/onboarding-fee'),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF4E74F9),
                        ),
                        width: 300,
                        height: 50,
                        child: Row(
                          children: const [
                            Flexible(
                              child: Center(
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: 12,
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
