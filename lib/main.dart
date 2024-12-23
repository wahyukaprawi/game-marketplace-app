import 'package:flutter/material.dart';
import 'package:gaming_marketplace_app/view/screens/dasboard/dasboard_screen.dart';
import 'package:provider/provider.dart';

import 'utils/myloading.dart/my_loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyLoading>(
          create: (context) => MyLoading(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gaming-Marketplace-App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF3669C9),
          ),
        ),
        home: const DasboardScreen(),
      ),
    );
  }
}
