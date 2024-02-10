import 'package:flutter/material.dart';
import 'package:shopping_lists/models/grocery_item.dart';

class GroceryListItem extends StatelessWidget {
  const GroceryListItem({
    super.key,
    required this.groceryItem,
    required this.onDismiss,
  });
  final GroceryItem groceryItem;
  final void Function(DismissDirection direction) onDismiss;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(groceryItem.id),
      onDismissed: onDismiss,
      child: ListTile(
        leading: Container(
          width: 20,
          height: 20,
          color: groceryItem.category.color,
        ),
        title: Text(groceryItem.name),
        trailing: Text(groceryItem.quantity.toString()),
      ),
    );
  }
}
