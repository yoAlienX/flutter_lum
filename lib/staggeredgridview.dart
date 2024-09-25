import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MaterialApp(
    home: Staggeredgridview(),
  ));
}

class Staggeredgridview extends StatefulWidget {
  const Staggeredgridview({super.key});

  @override
  State<Staggeredgridview> createState() => _StaggeredgridviewState();
}

class _StaggeredgridviewState extends State<Staggeredgridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Text('2')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.blueAccent,
                  child: const Center(child: Text('3')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Text('2')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.blueAccent,
                  child: const Center(child: Text('3')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Text('2')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.blueAccent,
                  child: const Center(child: Text('3')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Text('2')),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.blueAccent,
                  child: const Center(child: Text('3')),
                )),
          ],
        ),
      ),
    );
  }
}
