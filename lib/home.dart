import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
imporz=x+yurl = "https://api.coinmarketcap.com/v1/ticker/?limit=50";
    http.Response response = await http.get(cryptourl);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WaveCoin'),
      ),
      body: _cryptowidget(),
    );
  }


  
ngeWidget;
    if(double.parse(percentage)>0){
      percentageChangeWidget = TextSpan(
        text: percentageChange,
        style: TextStyle(color: Colors.green)
      );
    }
    else{
      percentageChangeWidget = TextSpan(
          text: percentageChange,
          style: TextStyle(color: Colors.red));
  }
}}
Widget _cryptowidget() {
    return Container(
      child: Flexible(
          child: ListView.builder(
            itemCount: currencies.length,
            itemBuilder: (BuildContext context, int index) {
              Map currency = currencies[index];
              MaterialColor color = colors[index % colors.length];
              return getListItemUI(currency,color);
            },
          )
      ),
    );
  }
