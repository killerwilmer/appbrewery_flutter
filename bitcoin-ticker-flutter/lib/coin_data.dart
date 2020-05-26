import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const kUrlApi = 'https://rest.coinapi.io/v1/exchangerate/';
const kApiKey = 'xxx';

class CoinData {
  Future<ResponseCoin> getCoinData() async {
    final response = await http.get(
      kUrlApi + 'BTC' + '/' + 'USD',
      headers: {'X-CoinAPI-Key': kApiKey},
    );

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);

      return ResponseCoin.fromJson(responseJson);
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}

class ResponseCoin {
  final String time;
  final String asset_id_base;
  final String asset_id_quote;
  final double rate;

  ResponseCoin({this.time, this.asset_id_base, this.asset_id_quote, this.rate});

  factory ResponseCoin.fromJson(Map<String, dynamic> json) {
    return ResponseCoin(
      time: json['time'],
      asset_id_base: json['asset_id_base'],
      asset_id_quote: json['asset_id_quote'],
      rate: json['rate'],
    );
  }
}
