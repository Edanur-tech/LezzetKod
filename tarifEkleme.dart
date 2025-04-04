import 'package:favoritarifler/appDrawer.dart';
import 'package:flutter/material.dart';


class Tarif {
  final String ad;
  final String malzemeler;
  final String yapilis;

  Tarif({
    required this.ad,
    required this.malzemeler,
    required this.yapilis,
  });
}
class tarifEkleme extends StatefulWidget {
  @override
  tarifEklemeState createState() => tarifEklemeState();

  static List<Tarif> tarifler = [];
}

class tarifEklemeState extends State<tarifEkleme> {
  final controller = TextEditingController();
  final textController = TextEditingController();
  final control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: AppBar(
        backgroundColor: Colors.yellow[500],
        title: Text(
          "Tarif Ekle",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Times New Roman",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          TextField(
            controller: controller,
            minLines: 1,
            maxLines: null,
            decoration: InputDecoration(
              label: Text("Tarifin Adı"),
              labelStyle: TextStyle(
                fontSize: 10,
                fontFamily: "Times New Roman",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          TextField(
            controller: textController,
            minLines: 1,
            maxLines: null,
            decoration: InputDecoration(
              label: Text("Tarifin Malzemeleri"),
              labelStyle: TextStyle(
                fontSize: 10,
                fontFamily: "Times New Roman",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          TextField(
            controller: control,
            minLines: 1,
            maxLines: null,
            decoration: InputDecoration(
              label: Text("Tarifin Yapılışı"),
              labelStyle: TextStyle(
                fontSize: 10,
                fontFamily: "Times New Roman",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty &&
                  textController.text.isNotEmpty &&
                  control.text.isNotEmpty) {
                // Yeni bir tarif nesnesi oluşturup listeye ekliyoruz
                tarifEkleme.tarifler.add(
                  Tarif(
                    ad: controller.text,
                    malzemeler: textController.text,
                    yapilis: control.text,
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Tarif listeye başarıyla eklendi.")),
                );
                // Text field'ları temizle
                controller.clear();
                textController.clear();
                control.clear();
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange[400],
              foregroundColor: Colors.deepOrange[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              shadowColor: Colors.grey,
              elevation: 4,
            ),
            child: Text("Ekle"),
          ),
        ],
      ),
    );
  }
}
