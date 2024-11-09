import 'package:app_news/Models/PrayerModel.dart';
import 'package:dio/dio.dart';

class PrayerService {
static Dio dio = Dio();
static Future<PrayerModel>getData()async
{
  try{
  Response response = await dio.get(
    'https://api.aladhan.com/v1/timingsByCity/09-11-2024?city=Giza&country=Egypt'
  );
  if(response.statusCode ==200)
  {
    return PrayerModel.fromjson(response.data);
  }
  else
  {
    throw Exception("Error");
  }
  }catch(e)
  {
    throw Exception("The Error is $e");
  }
}
}