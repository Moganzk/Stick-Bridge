import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:stickbridge/ui/game_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Google Mobile Ads SDK
  await MobileAds.instance.initialize();
  runApp(const StickBridgeApp());
}

class StickBridgeApp extends StatelessWidget {
  const StickBridgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stick Bridge',
      theme: ThemeData.dark(),
      home: const GameScreen(),
    );
  }
}
