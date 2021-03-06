import 'dart:convert';

import 'package:http/http.dart' as http;

enum requestType { get, post, put, delete }

class  Connect{

  _getHeaders() {
    Map<String, String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };
    return headers;
  }

  Future<dynamic> callRequest(String URL,
      [Map params, Map body, requestType type = requestType.get]) async {
   // Uri uri = getUri(target, params);

    var response;
    try {
     // bool isConnected = true;

        switch (type) {
          case requestType.get:
            response = await http.get(URL, headers: _getHeaders());
            break;
          case requestType.post:
            response = await http.post(URL, headers: _getHeaders(), body: json.encode(body));
            break;
          case requestType.put:
            response = await http.put(URL, headers: _getHeaders(), body: json.encode(body), encoding: utf8);
            break;
          case requestType.delete:
            response = await http.delete(URL, headers: _getHeaders(),);
            break;
          default:
        }
       return response;

    } catch (e) {
      print("Exaption: ${e.toString()}");
      // Dialogs.showNotiMsg(context, e.toString());
      return null;
    }
  }
}