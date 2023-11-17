import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Home Page with Flutter',
          style: 
          TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal
          ),
        ),
      ),

      body: ListView(
        children: const[
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpeg", title: 'Persegi')),
              Expanded(child: CustomMenu(imageAsset: "assets/persegipanjang.png", title: 'Persegi Panjang')),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/segitiga.png", title: 'Segitiga')),
              Expanded(child: CustomMenu(imageAsset: "assets/lingkaran.png", title: 'Lingkaran')),
            ],
          ),

          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpeg", title: "Persegi")),
              Expanded(child: CustomMenu(imageAsset: "assets/persegipanjang.png", title: "Persegi Panjang")),
            ],
          ),
        ],
      ),

    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      color: Colors.grey.shade300,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Image.asset(imageAsset, height: 150, width: 100,),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: 'sans-serif',
            ),
          )
        ],
      ),
    );
  }
}