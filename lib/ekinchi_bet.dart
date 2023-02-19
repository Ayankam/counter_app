import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  EkinchiBet({
    super.key,
    this.kelgenSan,
  });
  int? kelgenSan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          //изменить цвет здесь
          color: Color(0xff46f3f3),
        ),
        title: const Text(
          'ТАПШЫРМА 02',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff46f3f3),
                // kyrlaryn 12 pikselden kesti
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 120.0, vertical: 16.0),
                child: Text(
                  'сан: $kelgenSan',
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
