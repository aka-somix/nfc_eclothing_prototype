import 'package:flutter/material.dart';
import 'package:nfc_app_prototype/models/eclothes.dart';

class EclothesDetailPage extends StatelessWidget {
  final EClothes eclothes;

  EclothesDetailPage(this.eclothes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text(eclothes.title, style: const TextStyle(color: Colors.teal, fontSize: 24, fontWeight: FontWeight.bold)),
          Container(
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(eclothes.imageUrl), fit: BoxFit.fitWidth)
            ),
          ),
          Text(eclothes.id),
          Text(eclothes.category)
        ],
      )
    );
  }
}
