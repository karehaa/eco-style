import 'package:eco_style/presentation/provider/favorite_provider.dart';
import 'package:eco_style/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:eco_style/presentation/pages/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  setupServiceLocator();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => FavoriteProvider(),
          )
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "EcoStyle",
          home: SplashPage(),
        ),
      );
}
