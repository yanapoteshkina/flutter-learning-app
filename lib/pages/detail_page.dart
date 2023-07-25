import 'package:flutter/material.dart';
import 'package:test_flutter_dart/models/block.dart';

class DetailPage extends StatelessWidget {
  final Block block;

  DetailPage({required this.block});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(block.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(block.description),
      ),
    );
  }
}
