import 'package:nfc_app_prototype/models/eclothes.dart';

class EClothesMocker{

  static List<EClothes> generate() {
    return [
      EClothes('1', 'Maglietta Test 1', 'T-shirt', 'assets/images/mockEClothes/1234.jpeg'),
      EClothes('2', 'Maglietta Test 2', 'T-shirt', 'assets/images/mockEClothes/1234.jpeg'),
      EClothes('3', 'Maglietta Test 3', 'T-shirt', 'assets/images/mockEClothes/1234.jpeg'),
    ];
  }

}