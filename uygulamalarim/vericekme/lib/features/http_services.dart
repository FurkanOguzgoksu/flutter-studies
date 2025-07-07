import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpServices {
  static Future<T> fetchItem<T>({
    required String apiLink,
    required T Function(dynamic) fromJson,
  }) async {
    final url = Uri.parse(apiLink);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);
      var items = decoded["data"];
      return fromJson(items);
    } else {
      throw Exception("Veri alınamadı: ${response.statusCode}");
    }
  }
}
