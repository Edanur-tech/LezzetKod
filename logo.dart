import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Logo with ChangeNotifier {
  String _logoUrl = ''; // Logo URL'si

  String get logoUrl => _logoUrl;


  Future<void> fetchLogo() async {
    try {
      final response = await http.get(Uri.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9UCH3peFaLCciXFaKdJvygqaYU1bfV-5WuU_ubYsQM96A6iqtN9-TtsT8eL1w8WhBHeM&usqp=CAU"));

      if (response.statusCode == 200) {
        _logoUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9UCH3peFaLCciXFaKdJvygqaYU1bfV-5WuU_ubYsQM96A6iqtN9-TtsT8eL1w8WhBHeM&usqp=CAU"; // Başarıyla URL geldi
        notifyListeners(); // Dinleyen widget'ları bilgilendir
      } else {
        throw Exception("Logo yüklenemedi!");
      }
    } catch (e) {
      throw Exception("Logo yüklenemedi: $e");
    }
  }
}

