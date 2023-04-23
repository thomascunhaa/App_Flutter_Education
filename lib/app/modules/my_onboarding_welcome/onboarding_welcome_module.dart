import 'package:flutter_modular/flutter_modular.dart';

import '../my_guardian/my_guardian_page.dart';
import '../my_onboarding_fee/onboarding_fee_page.dart';
import 'onboarding_welcome_page.dart';
import 'onboarding_welcome_store.dart';

class OnboardingWelcomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => OnboardingWelcomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const OnboardingWelcome()),
    ChildRoute('/onboarding-fee', child: (_, args) => const OnboardingFee()),
    ChildRoute('/my-guardian', child: (_, args) => const MyGuardian()),
  ];
}
