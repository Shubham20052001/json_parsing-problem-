import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';


class Network{
  final String url;

  Network(this.url);

  Future fetchData() async {
    print("$url");
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    if(response.statusCode==200){
      // OK
      print(response.body);
      return json.decode(response.body);
    }else{
      print(response.statusCode);
    }
  }
}