class CategoryModel {
  bool _isSelected = false;
  String? _name;

  CategoryModel(this._isSelected, this._name);

  String? get name => _name;

  set name(String? value) {
    _name = value;
  }

  bool get isSelected => _isSelected;

  set isSelected(bool value) {
    _isSelected = value;
  }
}
