// import 'package:flutter/material.dart';
// import 'package:prak_state/views/plan_screen.dart';

// void main() => runApp(const MasterPlanApp());

// class MasterPlanApp extends StatelessWidget {
//   const MasterPlanApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Colors.purple,
//           foregroundColor: Colors.white,
//         ),
//       ),
//       home: const PlanScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:prak_state/models/plan.dart';
import 'package:prak_state/provider/plan_provider.dart';
import 'package:prak_state/views/plan_screen.dart';

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
        ),
      ),
      home: PlanProvider(
        notifier: ValueNotifier<Plan>(const Plan()),
        child: const PlanScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}