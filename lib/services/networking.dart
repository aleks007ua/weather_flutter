import 'dart:convert';
import 'package:http/http.dart';

class NetworkHelper {
  
  NetworkHelper(this.urlApiWeather);

  final String urlApiWeather;

  Future getData() async {
    var urlAPI = Uri.parse(urlApiWeather);
    Response response = await get(urlAPI);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);

    } else {
      print(response.statusCode);
    }
  }
}
