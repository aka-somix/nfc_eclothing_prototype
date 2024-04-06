import 'package:nfc_app_prototype/models/eclothes.dart';

class EClothesMocker{

  static List<EClothes> generate() {
    return [
      EClothes('f678dcdd-68f0-4ffb-a82e-3442efd54b16', 'Bershka: Coca Cola Tshirt', 'T-shirt', 'assets/images/mockEClothes/f678dcdd-68f0-4ffb-a82e-3442efd54b16.jpg'),
      EClothes('1', 'Maglietta Test 1', 'T-shirt', 'assets/images/mockEClothes/1234.jpg'),
      EClothes('2', 'Maglietta Test 2', 'T-shirt', 'assets/images/mockEClothes/1234.jpg'),
      EClothes('3', 'Maglietta Test 3', 'T-shirt', 'assets/images/mockEClothes/1234.jpg'),
    ];
  }

}