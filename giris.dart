import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:crypt/crypt.dart';

class Giris extends StatefulWidget {
  @override
  GirisState createState() => GirisState();
}

class GirisState extends State<Giris> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final storage = FlutterSecureStorage();

  String hashPassword(String password) {
    return Crypt.sha256(password, salt: 'randomSaltHere').toString();
  }

  Future<void> saveLoginInfo(String username, String password) async {
    await storage.write(key: 'username', value: username);
    await storage.write(key: 'password', value: hashPassword(password));
  }

  Future<void> loadLoginInfo() async {
    String? savedUsername = await storage.read(key: 'username');
    if (savedUsername != null) {
      usernameController.text = savedUsername;
    }
  }

  @override
  void initState() {
    super.initState();
    loadLoginInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: AppBar(
        backgroundColor: Colors.yellow[500],
        title: Text(
          "LezzetKod'a Hoşgeldiniz",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Times New Roman",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "🍴 LezzetKod ile Tariflerin Hep Yanında!\n\n"
                "👩‍🍳 Favori lezzetlerinizi unutmaya son!\n"
                "Sevdiğiniz tarifleri kaydedin, kendi tarif defterinizi oluşturun ve mutfakta harikalar yaratın.\n\n"
                "✨ LezzetKod ile:\n"
                "✅ Özel tariflerinizi kolayca ekleyin\n"
                "✅ En sevdiğiniz yemeklere hızla ulaşın\n"
                "✅ Mutfağınızı keşfetmeye hemen başlayın!\n\n"
                "🍔 Lezzet yolculuğunuz burada başlıyor – Hazır mısınız?",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Times New Roman",
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: "Times New Roman",
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Şifre",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: "Times New Roman",
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                saveLoginInfo(usernameController.text, passwordController.text);
                Navigator.pushNamed(context, "/ekle");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange[400],
                foregroundColor: Colors.deepOrange[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text("Hadi Başlayalım"),
            ),
          ],
        ),
      ),
    );
  }
}
