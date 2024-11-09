import 'package:app_news/Models/PrayerModel.dart';
import 'package:app_news/Services/PrayerService.dart';
import 'package:flutter/material.dart';

class PrayerProvider extends ChangeNotifier {
PrayerModel?prayerModel;
GetData()async
{
  prayerModel = await PrayerService.getData();
  notifyListeners();
}
}