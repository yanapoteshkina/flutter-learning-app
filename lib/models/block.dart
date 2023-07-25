import 'package:equatable/equatable.dart';

class Block extends Equatable {
  final String title;
  final String description;

  Block({required this.title, required this.description});

  @override
  List<Object?> get props => [title, description];
}
