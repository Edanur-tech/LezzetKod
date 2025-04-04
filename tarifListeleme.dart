import 'package:favoritarifler/tarifEkleme.dart';
import 'package:flutter/material.dart';

class tarifListele extends StatefulWidget {
  @override
  tarifListeleState createState() => tarifListeleState();
}

class tarifListeleState extends State<tarifListele> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarif Listesi"),
        backgroundColor: Colors.yellow[500],
      ),
      body: Column(
        children: [
          Expanded(
           child: ListView.builder(
              itemCount: tarifEkleme.tarifler.length,
              itemBuilder: (context, index) {
                final tarif = tarifEkleme.tarifler[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  elevation: 4.0,
                  child: ListTile(
                    title: Text(
                      tarif.ad,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Malzemeler: ${tarif.malzemeler}"),
                        Text("Yapılış: ${tarif.yapilis}"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text("Çıkış", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
