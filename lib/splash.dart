import 'dart:async';

import 'package:flutter/material.dart';
import 'package:venados/home.dart';
import 'package:venados/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Timer> loadData() async {
    // getHttp();
    return Timer(Duration(seconds: 0, milliseconds: 618, microseconds: 33),
        onDoneLoading);
  }

  // void getHttp() async {
  //   try {
  //     Response response = await Dio().get(
  //         "https://datos.cdmx.gob.mx/api/records/1.0/search/?dataset=ubicacion_c5_c2&q=&rows=20");
  //     print(response);
  //     coordenadas = Coordenada.fromJson(response.data);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  onDoneLoading() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: greenpaste,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Center(
            child: Image.asset('lib/assets/venados.png', width: 240.0),
          ),
        ),
      ),
    );
  }
}
