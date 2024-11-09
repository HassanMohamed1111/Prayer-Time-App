import 'package:app_news/Provider/PrayerProvider.dart';
import 'package:app_news/Widget/Custome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PrayerScreen extends StatelessWidget {
  const PrayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prayer Page"),
      ),
      body: Center(
        child: Consumer<PrayerProvider>(
          builder: (context, value, child) {
            var modelOfPrayer = value.prayerModel;
            if(modelOfPrayer == null)
            {
              value.GetData();
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else
            {
             return ListView.builder(
                itemBuilder: (context, index) {
                var name = modelOfPrayer.timings.keys; 
                var date = modelOfPrayer.timings.values;
                return CustomeCard(dataTime: name.elementAt(index), date: date.elementAt(index));
                },
                itemCount: modelOfPrayer.timings.length,
              );
            }
          },
        ),
      ),
    );
  }
}