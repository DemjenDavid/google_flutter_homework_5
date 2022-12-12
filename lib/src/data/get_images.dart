import 'dart:convert';

import 'package:homework_5/src/model/index.dart';
import 'package:http/http.dart';

class ImageApi {
  const ImageApi(this._client);

  final Client _client;

  Future<List<Image>> getImages() async {
    final Response r = await _client.get(
      Uri.parse('https://api.unsplash.com/photos/random/?count=9'),
      headers: <String, String>{'Authorization': 'Client-ID XikfGv9_2XiJwmo6yu6YMGym4286SOBE0nlPSQAVssg', 'count': '9'},
    );

    if (r.statusCode == 200) {
      final List<dynamic> body = jsonDecode(r.body) as List<dynamic>;
      return body.map((dynamic item) => Image.fromJson(item as Map<String, dynamic>)).toList();
    }
    return <Image>[];
  }
}
