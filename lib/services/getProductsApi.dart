import 'package:http/http.dart' as http;
import 'package:getx/pages/home/product_model.dart';
import 'dart:convert';

class RemoteServices {
  static var client = http.Client();
  static Future<List<Product>> fetchProducts() async {
    print("before");
    var response = await client.get(Uri.parse(
        "https://b1ad-110-44-120-28.in.ngrok.io/api/product/all-product"));
    print("here1");
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      print("here");
      List<Product> products = [];
      for (var u in jsonData["Products"]) {
        print(u);
        Product product = Product.fromJson(u);
        products.add(product);
        print("outside");
      }
      print(products.length);
      print(products);
      return (products);
    } else {
      //show error message
      return [];
    }
  }
}
