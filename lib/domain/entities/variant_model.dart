

import 'package:consforc/core/asset_gen/assets.gen.dart';

class VariantModel {
  String? _name;
  SvgGenImage? _image;
  String? price;


  VariantModel(this._name, this._image,{ this.price});

  SvgGenImage? get image => _image;

  set image(SvgGenImage? value) {
    _image = value;
  }

  String? get name => _name;

  set name(String? value) {
    _name = value;
  }
}
