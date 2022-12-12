import 'package:flutter/material.dart';
import 'package:flutter_navigasi_rute/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
    Item(name: 'Sauce', price: 1000),
    Item(name: 'Tomato', price: 3000),
    Item(name: 'Onion', price: 7000),
    Item(name: 'Garlic', price: 8000),
    Item(name: 'Ginger', price: 4000),
    Item(name: 'Paprika', price: 6000),
    Item(name: 'Oregano', price: 9000),
    Item(name: 'Pepper', price: 8000)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigasi Dan Route - Andi Mushawwir Rahmat 2041720235'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name.toString())),
                        Expanded(
                            child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
