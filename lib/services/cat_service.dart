import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mi_mvvm_sip/models/cat.dart';

class CatService {
  Future<Cat> fetchCat() async {
    final response = await http.get(Uri.parse('https://api.thecatapi.com/v1/images/search'));

    if (response.statusCode == 200) {
      return Cat.fromJson(jsonDecode(response.body)[0]);
    } else {
      throw Exception('Failed to load cat');
    }
  }
}