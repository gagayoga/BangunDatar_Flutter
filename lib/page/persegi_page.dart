import 'package:flutter/material.dart';

class PersegiPage extends StatelessWidget {
  const PersegiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Persegi Page',
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/persegi.jpeg",
            height: 150,
            width: 100,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Persegi',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'sans-serif',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
                'Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.'),
          ),
          
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi persegi",
                  hintText: "Masukkan Sisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),

          ElevatedButton(
            onPressed: (){
          }, child: Text(
            'Hitung Luas',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
        ],
      ),
    );
  }
}
