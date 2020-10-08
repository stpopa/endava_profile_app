import 'package:endava_profile_app/modules/auth/authentication_screen.dart';
import 'package:endava_profile_app/modules/contributors/contributors_screen.dart';
import 'package:endava_profile_app/modules/core_skills/core_skills_screen.dart';
import 'package:endava_profile_app/modules/home/home_screen.dart';
import 'package:endava_profile_app/modules/summary/summary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'common/constants.dart';
import 'modules/home/home_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/user_data/user_data_screen.dart';
import 'modules/create_list/create_list_screen.dart';

void main() {
  runApp(EndavaProfileApp());
}

class EndavaProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Endava Profile',
      routes: {
        AppRoute.of(AppScreen.login): (c) => LoginScreen(),
        AppRoute.of(AppScreen.home): (c) => HomeScreen(),
        AppRoute.of(AppScreen.auth): (c) => AuthenticationScreen(),
        AppRoute.of(AppScreen.contributors): (c) =>
            ContributorsScreen(repository: 'stpopa/endava_profile_app'),
        AppRoute.of(AppScreen.coreSkills): (c) => CoreSkillsScreen(),
        AppRoute.of(AppScreen.user_data): (c) => UserDataScreen(),
        AppRoute.of(AppScreen.create_list): (c) => CreateListScreen(),
        AppRoute.of(AppScreen.summary): (c) => SummaryScreen(),
        AppRoute.of(AppScreen.user_data): (c) => UserDataScreen(),
      },
      initialRoute: AppRoute.of(AppScreen.auth)
    );
  }
}
