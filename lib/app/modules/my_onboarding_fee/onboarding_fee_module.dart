import 'package:flutter_modular/flutter_modular.dart';

import 'onboarding_fee_page.dart';

class OnboardingFeeModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => OnboardingWelcomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const OnboardingFee()),
  ];
}
