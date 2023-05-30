import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_candlestick_chart/simple_candlestick_chart.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: StockMarket()),
  );
}

class StockMarket extends StatefulWidget {
  const StockMarket({super.key});

  @override
  State<StockMarket> createState() => _StockMarketState();
}

class _StockMarketState extends State<StockMarket> {
  late List date;
  late List open;
  late List high;
  late List low;
  late List close;
  List<CandlestickData> data = [];
  @override
  void initState() {
    super.initState();
    scrapeDataREL();
  }

  scrapeDataREL() async {
    final DateTime start = DateTime(2023, 5, 30, 09, 15);
    final DateTime end = DateTime(2023, 5, 30, 15, 30);
    final startEpoch = start.millisecondsSinceEpoch ~/ 1000;
    final endEpoch = end.millisecondsSinceEpoch ~/ 1000;
    // print(startEpoch);
    // print(DateTime.fromMillisecondsSinceEpoch(1685354400000));
    final apiURL =
        "https://priceapi.moneycontrol.com/techCharts/indianMarket/stock/history?symbol=RELIANCE&resolution=15&from=$startEpoch&to=$endEpoch&countback=326&currencyCode=INR";

    final res = await http.get(Uri.parse(apiURL));
    var data = json.decode(res.body);

    // print(data);

    date = data['t'];
    open = data['o'];
    high = data['h'];
    low = data['l'];
    close = data['c'];

    for (int i = 0; i < open.length; i++) {
      CandlestickData(
        DateTime.fromMillisecondsSinceEpoch(date[i] * 1000),
        open[i],
        high[i],
        low[i],
        close[i],
        0,
      );
    }
    print(open.last);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SimpleCandlestickChart(
      data: data,
      increaseColor: Colors.teal,
      decreaseColor: Colors.pinkAccent,
      physics: const BouncingScrollPhysics(),
    )));
  }
}
