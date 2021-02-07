import 'package:flutter/material.dart';

class LibraryCategoryTile extends StatelessWidget {
  final String tileText;
  final IconData tileIcon;

  LibraryCategoryTile({
    @required this.tileText,
    @required this.tileIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).backgroundColor,
      elevation: 0,
      child: ListTile(
        onTap: () {},
        leading: Icon(
          tileIcon,
          color: Colors.grey,
        ),
        title: Text(
          tileText,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
