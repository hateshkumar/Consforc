import 'package:consforc/core/asset_gen/assets.gen.dart';

class ProductModel {
  bool _isSelected = false;
  String? _name;
  String? _price;
  String? _discount_price;
  PngGenImage? _image;

  ProductModel(this._isSelected, this._name, this._price, this._discount_price, this._image);


  PngGenImage? get image => _image;

  set image(PngGenImage? value) {
    _image = value;
  }

  String? get discount_price => _discount_price;

  set discount_price(String? value) {
    _discount_price = value;
  }

  String? get price => _price;

  set price(String? value) {
    _price = value;
  }

  String? get name => _name;

  set name(String? value) {
    _name = value;
  }

  bool get isSelected => _isSelected;

  set isSelected(bool value) {
    _isSelected = value;
  }
}
