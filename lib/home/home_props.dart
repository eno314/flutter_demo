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
  final String route;

  HomeListItemProps({
    required this.title,
    required this.route,
  });
}
