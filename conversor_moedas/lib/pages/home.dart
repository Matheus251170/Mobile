import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

var request = Uri.parse('https://api.hgbrasil.com/finance?format=json-cors&key=9efe9041');

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController realController = TextEditingController();
    final TextEditingController dolarController = TextEditingController();
    final TextEditingController euroController = TextEditingController();

    late double dolar;
    late double euro;

    void _clearAll() {
      if (realController.text == "") {
        dolarController.clear();
        euroController.clear();
      } else if (dolarController.text == '') {
        realController.clear();
        euroController.clear();
      } else if (euroController.text == "") {
        realController.clear();
        dolarController.clear();
      }
    }

    void _realChanged(String text) {
      if (text.isEmpty) {
        _clearAll();
        return;
      }

      double real = double.parse(text);
      dolarController.text = (real / dolar).toStringAsFixed(2);
      euroController.text = (real / euro).toStringAsFixed(2);
    }

    void _dolarChanged(String text) {
      if (text.isEmpty) {
        _clearAll();
        return;
      }

      double doll = double.parse(text);
      realController.text = (doll * dolar).toStringAsFixed(2);
      euroController.text = (doll * dolar / euro).toStringAsFixed(2);
    }

    void _euroChanged(String text) {
      if (text.isEmpty) {
        _clearAll();
        return;
      }

      double eur = double.parse(text);
      realController.text = (eur * euro).toStringAsFixed(2);
      dolarController.text = (eur * euro / dolar).toStringAsFixed(2);
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("\$ Conversor \$"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: FutureBuilder<Map>(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return const Center(
                  child: Text(
                    "Carregando dados...",
                    style: TextStyle(color: Colors.amber, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                );

              default:
                if (snapshot.hasError) {
                  return const Center(
                    child: Text(
                      "Ops! Algo de errado aconteceu!",
                      style: TextStyle(color: Colors.amber, fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  );
                } else {
                  dolar = snapshot.data!["results"]["currencies"]["USD"]["buy"];
                  euro = snapshot.data!["results"]["currencies"]["EUR"]["buy"];

                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.monetization_on,
                            size: 150,
                            color: Colors.amber,
                          ),
                        ),
                        Divider(),
                        buildTextField(
                            "Reais", "R\$", realController, _realChanged),
                        Divider(),
                        buildTextField(
                            "Dólares", "\$", dolarController, _dolarChanged),
                        Divider(),
                        buildTextField(
                            "Euros", "€", euroController, _euroChanged),
                      ],
                    ),
                  );
                }
            }
          },
        ),
      ),
    );
  }
}

Widget buildTextField(String label, String prefix,
    TextEditingController controller, Function convert) {
  return TextField(
    controller: controller,
    style: const TextStyle(
      color: Colors.amber,
      fontSize: 18,
    ),
    decoration: InputDecoration(
        labelText: label,
        prefixText: prefix,
        labelStyle: const TextStyle(color: Colors.amber),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.amber,
            width: 2,
          ),
        )),
    onChanged: (text) {
      convert(text);
    },
    keyboardType: const TextInputType.numberWithOptions(decimal: true),
  );
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}
