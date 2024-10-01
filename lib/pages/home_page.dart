import 'package:flutter/material.dart';
import 'package:flutter_aplication_3/components/item_note.dart';
import 'package:flutter_aplication_3/models/note.dart';

final List<Note> notes = <Note>[
  Note(
    id: 1,
    photo_id: 'assets/photo/16PM.jpg',
    title: 'USDTC',
    description: 'ЧТО-ТО ПРО usdtc',
    price: '0.00012 usdt.',
  ),
  Note(
    id: 2,
    photo_id: 'assets/photo/15PM.jpg',
    title: 'ETH',
    description: 'ЧТО-ТО ПРО eth',
    price: '2645 usdt.',
  ),
  Note(
    id: 3,
    photo_id: 'assets/photo/13.jpg',
    title: 'BTC',
    description: "ЧТО-ТО ПРО btc",
    price: 'от 60 000 usdt.',
  ),
  Note(
    id: 4,
    photo_id: 'assets/photo/15.jpg',
    title: 'cosmos atom',
    description: 'ЧТО-ТО ПРО atom',
    price: 'от 4.8 usdt.',
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Coins магазин')),
        ),
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return ItemNote(notes: notes[index]);
            }));
  }
}
