import 'dart:convert';

import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> callBackend() async {
    Map<String, String> headers = {
      'content-type': 'application/json',
    };

    Map<String, dynamic> body = {
      'title': 'teste',
      'body': 'conteudo',
      'userId': 1
    };

    final dio = Dio();

    try {
      // Response response = await dio.get(
      //   'https://jsonplaceholder.typicode.com/posts',
      //   options: Options(
      //     headers: headers,
      //   ),
      // );

      Response response = await dio.post(
        'https://jsonplaceholder.typicode.com/posts',
        options: Options(
          headers: headers,
        ),
        data: body,
      );

      // throw 'Erro customizado';
      print(response.data);

    }
    on DioError {
      print('erro requisição');
    }
    catch(e){
      print('Erro: $e');
    }

    // http.Response response = await http.get(
    //     Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    //     headers: headers);

    // http.Response response = await http.post(
    //     Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    //     headers: headers,
    //     body: jsonEncode(body)
    // );


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callBackend();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste HTTP'),
      ),
      body: const Center(
        child: Text('Realizando teste HTTP'),
      ),
    );
  }
}
