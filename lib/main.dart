import 'package:counter_app/ekinchi_bet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BirinchiBet(),
    );
  }
}

class BirinchiBet extends StatefulWidget {
  const BirinchiBet({super.key});

  @override
  State<BirinchiBet> createState() => _BirinchiBetState();
}

class _BirinchiBetState extends State<BirinchiBet> {
  int esep = 0;
  kemituu() {
    setState(() {});
    esep--;
  }

  koshuu() {
    setState(() {});
    esep = esep + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "ТАПШЫРМА 01",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffBDBDbd),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            height: 48,
            width: 294,
            child: Center(
              child: Text(
                "san: $esep",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  kemituu();
                },
                child: Container(
                  height: 40,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.remove,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              TextButton(
                onPressed: () {
                  koshuu();
                },
                child: Container(
                  height: 40,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            child: Icon(
              Icons.abc_rounded,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EkinchiBet(
                    kelgenSan: esep,
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              maximumSize: Size(70, 40),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class BirinchiBet extends StatefulWidget {
//   const BirinchiBet({super.key});
//   @override
//   State<BirinchiBet> createState()=> _BirinchiBetState();
// }
// class BirinchiBetState extends State<BirinchiBet> {
//   int esep = 0;
//   kemituu(){
//     setState(() {});
//    esep--;
//    log("kemituu===>$esep");   
//   }
   
//     koshuu(){
// setState(() {});
//  esep = esep + 1; 
//     }
// @override
// Widget build(BuildContext context){
// return 



//   ),
// 3


// }
    
  




