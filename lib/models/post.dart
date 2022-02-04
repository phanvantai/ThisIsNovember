import 'package:flutter/material.dart';

class PostModel {
  final String id;
  final String title;
  final String? image;
  final String? description;
  final String date;
  final List<String>? tags;
  final String content;
  String? nextPost;
  String? previousPost;

  PostModel({
    required this.id,
    required this.title,
    required this.date,
    required this.content,
    this.image,
    this.description,
    this.tags,
    this.nextPost,
    this.previousPost,
  });
}
