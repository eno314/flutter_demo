import 'package:flutter/material.dart';
import 'package:flutter_demo/home/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: HomePage()));
}
