import 'package:flutter/material.dart';
import 'package:nfc_app_prototype/models/__mocks__/eclothes.dart';
import 'package:nfc_app_prototype/models/eclothes.dart';
import 'package:nfc_app_prototype/widgets/eclothes_item.dart';

class WardrobeGallery extends StatelessWidget {

  final List<EClothes> clothesList = EClothesMocker.generate();

  WardrobeGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("W A R D R O B E"), centerTitle: true,),
      body: SizedBox(
        height: 280,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => EClothesItem(clothesList[index]),
          itemCount: clothesList.length
        )
      )
    );
  }
}