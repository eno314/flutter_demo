import 'package:flutter/material.dart';
import 'package:flutter_demo/counter/counter_page.dart';
import 'package:flutter_demo/form/form_page.dart';
import 'package:flutter_demo/home/home_props.dart';
import 'package:flutter_demo/home/home_template.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const _HomePage(),
        CounterPage.route: (context) => const CounterPage(),
        FormPage.route: (context) => const FormPage(),
      },
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return HomeTemplate(
      props: HomeProps(
        title: 'Home',
        items: [
          _counterPageListItemProps(),
          _formPageListItemProps(),
        ],
      ),
      onTapListItem: (context, route) => Navigator.pushNamed(context, route),
    );
  }

  HomeListItemProps _counterPageListItemProps() {
    return HomeListItemProps(
      title: CounterPage.title,
      route: CounterPage.route,
    );
  }

  HomeListItemProps _formPageListItemProps() {
    return HomeListItemProps(
      title: FormPage.title,
      route: FormPage.route,
    );
  }
}
