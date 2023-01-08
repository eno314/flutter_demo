import 'package:flutter/material.dart';

class HomeProps {
  final String title;
  final List<HomeListItemProps> items;

  HomeProps({
    required this.title,
    required this.items,
  });
}

class HomeListItemProps {
  final String title;
  final void Function(BuildContext context) onTapListItem;

  HomeListItemProps({
    required this.title,
    required this.onTapListItem,
  });
}
