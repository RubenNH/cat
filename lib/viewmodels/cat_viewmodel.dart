import 'package:flutter/material.dart';
import 'package:mi_mvvm_sip/models/cat.dart';
import 'package:mi_mvvm_sip/services/cat_service.dart';

class CatViewModel extends ChangeNotifier {
  final CatService _catService = CatService();
  Cat? _cat;

  bool _isLoading = false;

  Cat? get cat => _cat;
  bool get isLoading => _isLoading;

  Future<void> fetchCat() async {
    _isLoading = true;
    notifyListeners();

    try {
      _cat = await _catService.fetchCat();
    } catch (e) {
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
