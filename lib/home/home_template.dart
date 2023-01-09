import 'package:flutter/material.dart';
import 'package:flutter_demo/home/home_props.dart';

class HomeTemplate extends StatelessWidget {
  final HomeProps props;
  final void Function(BuildContext, String route) onTapListItem;

  const HomeTemplate({
    super.key,
    required this.props,
    required this.onTapListItem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(props.title),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildList(BuildContext context) {
    return ListView.builder(
      itemCount: props.items.length,
      itemBuilder: _buildListItem,
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    final item = props.items[index];
    return Card(
      key: Key('home_list_item_$index'),
      child: ListTile(
        title: Text(item.title),
        onTap: () => onTapListItem(context, item.route),
      ),
    );
  }
}
