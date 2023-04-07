import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/goal_tracker.dart';
import '../views/main_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GoalTracker()),
      ],
      child: const MaterialApp(
        home: MainView(),
        //theme: Themes.themeData,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
