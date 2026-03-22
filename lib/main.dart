import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prm_project/core/di/injection.dart';
import 'package:prm_project/core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SesameBox',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
      ),
      routerConfig: AppRouter.router,
    );
  }
}
