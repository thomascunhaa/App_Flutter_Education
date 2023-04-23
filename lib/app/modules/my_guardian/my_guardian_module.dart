import 'package:flutter_modular/flutter_modular.dart';

import 'my_guardian_page.dart';

class MyGuardianModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => OnboardingWelcomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const MyGuardian()),
  ];
}
