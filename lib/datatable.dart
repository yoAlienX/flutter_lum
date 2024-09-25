import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Datatablewidget(),));
}

class Datatablewidget extends StatefulWidget {
  const Datatablewidget({super.key});

  @override
  State<Datatablewidget> createState() => _DatatablewidgetState();
}

class _DatatablewidgetState extends State<Datatablewidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
            border: TableBorder.symmetric(borderRadius: BorderRadius.circular(20)),
            columns: [
              DataColumn(
                  label: Text(
                    'ID',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              DataColumn(
                  label: Text(
                    'Name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              DataColumn(
                  label: Text(
                    'Job',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              DataColumn(
                  label: Text(
                    'Salary',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ], rows: const [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Rahul')),
            DataCell(Text('Flutter Dev')),
            DataCell(Text('25k')),
          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('Hari')),
            DataCell(Text('Flutter Dev')),
            DataCell(Text('25k')),
          ]),
          DataRow(cells: [
            DataCell(Text('3')),
            DataCell(Text('Ebin')),
            DataCell(Text('Flutter Dev')),
            DataCell(Text('25k')),
          ]),
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Sam')),
            DataCell(Text('Fullstack Dev')),
            DataCell(Text('20k')),
          ]),
          DataRow(cells: [
            DataCell(Text('5')),
            DataCell(Text('Delvin')),
            DataCell(Text('Trainee')),
            DataCell(Text('15k')),
          ]),
        ]),
      ),
    );
  }
}
