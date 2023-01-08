import 'package:flutter/material.dart';
import 'package:flutter_demo/counter/counter_page.dart';
import 'package:flutter_demo/home/home_props.dart';
import 'package:flutter_demo/home/home_template.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeTemplate(
        props: HomeProps(
      title: 'Home',
      items: [
        _counterListItemProps(context),
      ],
    ));
  }

  HomeListItemProps _counterListItemProps(BuildContext context) {
    return HomeListItemProps(
      title: 'Counter',
      onTapListItem: (context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CounterPage()),
      ),
    );
  }
}
