import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List currencies;
  List<MaterialColor> _colors= [Colors.blue,Colors.indigo,Colors.red];

  @override
  void initStAte() async{
    super.initState();
    currencies=await getCurrencies();
  }

  Future<List> getCurrencies() async{
    String cryptoUrl="https://api.coinmarketcap.com/v1/ticker/?limit=50";
    http.Response response=await http.get(cryptoUrl);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto App"),
        centerTitle: true,
      ),
      body: _cryptoWidget(),
    );
  }

  Widget _cryptoWidget(){
    return Container(
      child: Flexible(
        child: ListView.builder(
            itemCount: currencies.length,
            itemBuilder: (context,index){
              final Map currency=currencies[index];
              final MaterialColor color=_colors[index %_colors.length];
              return _getListItemUI(currency,color);
            }
        ),
      ),
    );
  }

  Widget _getListItemUI(Map currency,MaterialColor color){
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Text(currency['name'][0]),
      ),
      title: Text(currency['name'],style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: _getSubtitle(currency['price_usd'],currency['percent_change_1h']),
    );
  }

  Widget _getSubtitle(String priceUSD, String percentageChange){
    TextSpan priceTextWidget=TextSpan(
      text: "\n$priceUSD\n",
      style: TextStyle(color: Colors.black),
      String percentageChangeText="1 hour: $percentageChange"

    )
  }
}
