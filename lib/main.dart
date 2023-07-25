import 'package:flutter/material.dart';
import 'package:test_flutter_dart/models/block.dart';
import 'package:test_flutter_dart/pages/detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black, // Устанавливаем черный цвет текста
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Замените этот список данными вашего приложения
  final List<Block> blockList = [
    Block(
      title: 'ООП',
      description: 'Описание ',
    ),
    Block(
      title: 'Алгоритмы и структуры данных',
      description: 'Описание ',
    ),
    Block(
      title: 'Операционные системы',
      description: 'Описание ',
    ),
    Block(
      title: 'Парсинг',
      description: 'Описание ',
    ),
    // Добавьте здесь свои данные блоков
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Список дисциплин')),
      body: ListView.builder(
        itemCount: blockList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(block: blockList[index]),
                ),
              );
            },
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      blockList[index].title,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      blockList[index].description,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
