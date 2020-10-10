import 'dart:async';
import 'dart:convert';
import 'dart:io' as Io;
import 'package:http/http.dart' as http;


const baseUrl = 'https://api.coinmarketcap.com/';

class CoinMarketCapService {
  http.Client client = http.Client();

  Future getCurrencies() async{
    String url = baseUrl +"v1/ticker/?limit=50";
    var response;

    try{
      response = await client.get(url).timeout(new Duration(seconds: 15));
    } on Io.SocketException catch (_) {
      throw Exception('Not connected. Failed to get currencies');
    } catch (error) {
      print('catch Exception $error');
      rethrow;
    }

    print('response.statusCode == 200 = ${response.statusCode == 200}');
    if(response.statusCode == 200){
      print('response.body');
      print(response.body);

      return json.decode(response.body);
    }
//    return [{'name': 'name1', 'price_usd': '1.00', 'percent_change_1h': '0.5'},{'name': 'name2', 'price_usd': '1.20', 'percent_change_1h': '0.43'}];
  }
}