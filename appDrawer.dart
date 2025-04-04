import 'package:favoritarifler/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatefulWidget {
  @override
  AppDrawerState createState() => AppDrawerState();
}

class AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    // LogoProvider'dan logoUrl'yi almak
    final logoProvider = Provider.of<Logo>(context);

    // API'den veriyi çekmek için fetchLogo()'yu çağır
    logoProvider.fetchLogo();

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.yellow[100],
            ),
            child: logoProvider.logoUrl.isEmpty
                ? Center(child: CircularProgressIndicator())
                : Image.network(logoProvider.logoUrl, fit: BoxFit.contain),
          ),
          Text(
            "Menü",
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Times New Roman",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          ListTile(
            title: Text(
              "Tarif Ekle",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Times New Roman",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            onTap: () => {
              Navigator.pushNamed(context, "/ekle"),
            },
          ),
          ListTile(
            title: Text(
              "Tariflerin Listesi",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Times New Roman",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            onTap: () => {
              Navigator.pushNamed(context, "/liste"),
            },
          ),
        ],
      ),
    );
  }
}
