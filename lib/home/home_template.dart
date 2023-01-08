import 'package:flutter/material.dart';
import 'package:flutter_demo/home/home_props.dart';

class HomeTemplate extends StatelessWidget {
  final HomeProps props;

  const HomeTemplate({
    super.key,
    required this.props,
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
      itemBuilder: (context, index) =>
          _buildListItem(context, props.items[index]),
    );
  }

  Widget _buildListItem(BuildContext context, HomeListItemProps item) {
    return Card(
      key: Key('homeListItem${item.title}'),
      child: ListTile(
        title: Text(item.title),
        onTap: () => item.onTapListItem(context),
      ),
    );
  }
}
