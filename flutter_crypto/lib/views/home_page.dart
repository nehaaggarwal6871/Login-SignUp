import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttercrypto/services/coin_market_cap_service.dart';
import 'dart:async';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CoinMarketCapService coinMarketCapService;
  List<MaterialColor> _colors;
  Future fCurrencies;

  @override
  initState() {
    super.initState();
    coinMarketCapService = new CoinMarketCapService();
    _colors = [Colors.blue,Colors.indigo,Colors.red];
    _loadCurrencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _loadCurrencies() async {
    setState(() {
      fCurrencies = coinMarketCapService.getCurrencies();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto App"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: fCurrencies,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == null) {
              return _emptyWidget();
            }
            return _cryptoWidget(snapshot.data);
          }

          return new Center(
            child: new SizedBox(
              width: 100.0,
              height: 100.0,
              child: new CircularProgressIndicator()
          ),
          );
        }
      ),
    );
  }

  Widget _emptyWidget() {
    return Center(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          new Icon(Icons.cloud_off, size: 80,),
          new Text('No data', style: TextStyle(fontSize: 20),),
          new SizedBox(height: 16,),
          new IconButton(
            tooltip: 'Reload',
            icon: new Icon(Icons.refresh),
            onPressed: _loadCurrencies
          ),
        ],
      ),
    );
  }

  Widget _cryptoWidget(List currencies) {
    print('_cryptoWidget()');
    print(currencies.toString());

    return ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (context,index){
          final Map currency = currencies[index];
          final MaterialColor color = _colors[index %_colors.length];
          return _getListItemUI(currency, color);
        }
    );
  }

  Widget _getListItemUI(Map currency,MaterialColor color){
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Text(currency['name'][0]),
      ),
      title: Text(currency['name'],style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: _getSubtitle(currency['price_usd'], currency['percent_change_1h']),
    );
  }

  Widget _getSubtitle(String priceUSD, String percentageChange){
    String percentageChangeText = "1 hour: $percentageChange";
    return  Text('priceUSD = $priceUSD \nPercent Change(1h) = $percentageChangeText',
      style: TextStyle(color: Colors.black),
    );
  }
}
