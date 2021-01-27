import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:maintemplatev2/core/core.dart';
import 'package:random_string/random_string.dart';

import 'views/settings_view.dart';

class SettingsModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Paths.settings,
          child: (context, args) => SettingsView(
            key: Key(randomString(32)),
          ),
        ),
      ];

  static Inject get to => Inject<SettingsModule>();
}
