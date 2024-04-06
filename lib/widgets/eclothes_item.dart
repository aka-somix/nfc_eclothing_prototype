import 'package:flutter/material.dart';
import 'package:nfc_app_prototype/models/eclothes.dart';

class EClothesItem extends StatelessWidget {

  final EClothes eclothes;

  EClothesItem(this.eclothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- IMAGE ---
            Container(
              margin: const EdgeInsets.all(10),
              height: 170,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(eclothes.imageUrl), fit: BoxFit.fitWidth)
              ),
            ),
            // --- TITLE ---
            Text(
              eclothes.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            // --- CATEGORY ---
            Text(
              eclothes.category,
              style: const TextStyle(
                fontWeight: FontWeight.w100
              ),
            )
          ],
        ),
      ),
    );
  }
}