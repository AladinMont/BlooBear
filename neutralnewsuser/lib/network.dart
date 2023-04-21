import 'package:http/http.dart' as http;

class Network {
  static  lista() async {
    var uri = url;
    final response = await http.get(Uri.parse(
      "$uri/news",
    ));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}

const url = "http://192.168.222.37:3000";
