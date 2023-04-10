import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/main.dart';


class TodosDetailPage extends StatelessWidget {
  final String kegiatan;
  final String keterangan;
  final String tglMulai;
  final String tglSelesai;
  const TodosDetailPage(
      {super.key,
      required this.kegiatan,
      required this.keterangan,
      required this.tglMulai,
      required this.tglSelesai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            children: [
              Icon(Icons.circle),
              Column(
                children: [
                  Text(kegiatan.toString()),
                  Text(keterangan.toString()),
                ],
              ),
              Column(
                children: [Text(tglMulai), Text(tglSelesai)],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
