import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ListAlbunsScreen extends StatefulWidget {
  const ListAlbunsScreen({super.key});

  @override
  _ListAlbunsScreenState createState() => _ListAlbunsScreenState();
}

class _ListAlbunsScreenState extends State<ListAlbunsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Center(child: Text('This is the List Albuns Screen!'))],
    );
  }
}
