import 'package:flutter/material.dart';

import 'models/product.dart';
import 'screens/home_screen.dart';
import 'screens/product_with_augmented_reality_screen.dart';
import 'shared/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M28I Augmented Reality',
      theme: const AppTheme().themeData,
      home: const HomeScreen(),
      routes: {
        '/product': (context) => ProductWithAugmentedRealityScreen(
              product: ModalRoute.of(context)!.settings.arguments as Product,
            ),
      },
    );
  }
}
