import 'package:flutter/material.dart';

class CustomeCard extends StatelessWidget {
final String dataTime;
final String date;
CustomeCard({required this.dataTime , required this.date});
  @override
  Widget build(BuildContext context) {
    return Card(
          elevation: 20,
          shadowColor: Colors.black38,
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dataTime,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(date),
                ],
              ),
            ),
          ),
        );
  }
}