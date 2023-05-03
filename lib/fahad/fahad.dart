import 'package:flutter/material.dart';

class fahad extends StatefulWidget {
  const fahad({super.key});

  @override
  State<fahad> createState() => _fahadState();
}

class _fahadState extends State<fahad> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("ggggggggggggggggggggggggggggg"),
          // floating: false,
          // flexibleSpace: Placeholder(),
          expandedHeight: 200,
        ),
      ],
    );
  }
}
