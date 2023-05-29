import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  scrapeData() async {
    const apiURL =
        "https://groww.in/v1/api/charting_service/v2/chart/exchange/NSE/segment/CASH/NIFTY/daily?intervalSeconds=1&minimal=true";
    Timer.periodic(const Duration(seconds: 2), (timer) async {
      final res = await http.get(Uri.parse(apiURL));
      var data = json.decode(res.body);
      List<double> secondElements =
          data['candles'].map<double>((candle) => candle[1] as double).toList();
      print(secondElements.last);
    });


    // List<DateTime> dateTimeList = data['candles']
    //     .map<DateTime>((candle) =>
    //         DateTime.fromMillisecondsSinceEpoch((candle[0] * 1000).toInt()))
    //     .toList();

    // print(dateTimeList);
  }

  scrapeData();
}
