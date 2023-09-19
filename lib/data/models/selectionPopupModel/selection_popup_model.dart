///SelectionPopupModel is common model
///used for setting data into dropdowns
class SelectionPopupModel {
  int id = 0;
  String title = "";
  dynamic value;
  bool isSelected = false;

  SelectionPopupModel({
    required this.id,
    required this.title,
    this.value,
    required this.isSelected,
  });
}
