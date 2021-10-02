import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_item.dart';

class ListItemWidget extends StatelessWidget {
  final ListItem item;
  final Animation<double> animation;
  final VoidCallback onClicked;
  const ListItemWidget({
    Key key,
    this.item,
    this.animation,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      SizeTransition(sizeFactor: animation, child: buildItem());

  Widget buildItem() => Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.green,
          ),
          title: Text(
            item.title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              iconSize: 30,
              onPressed: onClicked),
        ),
      );
}
