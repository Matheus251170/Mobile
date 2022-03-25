import 'package:flutter/material.dart';
import 'package:gif_search/pages/gifPage.dart';
import 'package:http/http.dart' as http;
import 'gifPage.dart';
import 'dart:convert';
import 'package:share_plus/share_plus.dart';
import 'package:transparent_image/transparent_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _search = '';
  int _offSet = 0;

  Future<Map> _getGifs() async {
    http.Response response;

    if (_search == null || _search.isEmpty) {
      response = await http.get(Uri.parse(
          "https://api.giphy.com/v1/gifs/trending?api_key=D5AJ0Exmw8mVgDICkpK5HrSOnczx5xX6&limit=19&rating=g"));
    } else {
      response = await http.get(
        Uri.parse(
            "https://api.giphy.com/v1/gifs/search?api_key=D5AJ0Exmw8mVgDICkpK5HrSOnczx5xX6&q=$_search&limit=20&offset=$_offSet&rating=g&lang=en"),
      );
    }

    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();

    _getGifs().then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          // title: Image.asset('../../assets/images/header.gif'),
          title: Text('Buscador de gifs'),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Pesquise aqui",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (text) {
                  setState(() {
                    _search = text;
                    _offSet = 0;
                  });
                },
                style: const TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: FutureBuilder(
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                      return Container(
                        width: 200,
                        height: 200,
                        alignment: Alignment.center,
                        child: const CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      );

                    default:
                      if (snapshot.hasError) {
                        return Container();
                      } else {
                        return _createGifTable(context, snapshot);
                      }
                  }
                },
                future: _getGifs(),
              ),
            )
          ],
        ),
      ),
    );
  }

  int _getCount(List data) {
    if (_search == null || _search.isEmpty) {
      return data.length;
    } else {
      return data.length + 1;
    }
  }

  Widget _createGifTable(BuildContext context, AsyncSnapshot snapshot) {
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: _getCount(
          snapshot.data['data'],
        ),
        itemBuilder: (context, index) {
          if (_search == null || index < snapshot.data['data'].length) {
            return GestureDetector(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: snapshot.data['data'][index]['images']['fixed_height']
                    ['url'],
                height: 300,
                fit: BoxFit.cover,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GifPage(
                      snapshot.data["data"][index],
                    ),
                  ),
                );
              },
              onLongPress: () {
                Share.share(
                  snapshot.data["data"][index]["images"]["fixed_height"]["url"],
                );
              },
            );
          } else {
            return Container(
              child: GestureDetector(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 70,
                    ),
                    Text(
                      'Carregar mais...',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    _offSet += 19;
                  });
                },
              ),
            );
          }
        });
  }
}
