import 'package:app_news/Provider/PrayerProvider.dart';
import 'package:app_news/Screans/PrayerScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => PrayerProvider(),
        child: PrayerScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}