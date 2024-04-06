import 'package:nfc_app_prototype/models/eclothes.dart';

class EclothesMockedController {

  static EClothes getFromId(String id) {
    if (id == 'f678dcdd-68f0-4ffb-a82e-3442efd54b16') {
      return EClothes('f678dcdd-68f0-4ffb-a82e-3442efd54b16', 'Bershka: Coca Cola Tshirt', 'T-shirt', 'assets/images/mockEClothes/f678dcdd-68f0-4ffb-a82e-3442efd54b16.jpg');
    }
    return EClothes(id, 'Maglietta Test 1', 'T-shirt', 'assets/images/mockEClothes/1234.jpg');
  }

}
