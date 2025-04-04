# LezzetKod
LezzetKod, kullanıcıların favori tariflerini kaydedebileceği, listeleyebileceği bir mobil uygulamadır. Uygulama, Flutter kullanılarak geliştirilmiş olup yerel depolama yöntemi kullanarak tariflerin saklanmasını sağlar.

## 📌 Projedeki Sayfalar ve Görevleri

1. **Giriş (Login) Sayfası**
   - Kullanıcı girişini sağlar.
   - Kullanıcı adı Secure Storage ile şifrelenmiş olarak saklanır.
   - Şifre, hashleme yöntemi ile saklanır.

2. **Tarif Listesi Syafası**
   - Kaydedilen tarifleri listeler.

3. **Tarif Ekleme Sayfası**
   - Kullanıcı yeni tarif ekleyebilir.
   - Tarif bilgileri cihazda yerel olarak saklanmaktadır.

6. **Drawer Menü**
   - Uygulama içinde hızlı gezinti sağlar.
   - Kullanılan logo, belirlenen bir API üzerinden çekilmektedir.

## 🖼️ Drawer Menüde Kullanılan Logo API Bilgileri
Drawer menüsünde kullanılan logo, aşağıdaki API üzerinden çekilmektedir:
```sh
https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9UCH3peFaLCciXFaKdJvygqaYU1bfV-5WuU_ubYsQM96A6iqtN9-TtsT8eL1w8WhBHeM&usqp=CAU=LezzetKod
```
Bu API, uygulamanın logosunu dinamik olarak görüntülemek için kullanılır.

## 🔐 Giriş Bilgilerini Saklama Yöntemi
- **Kullanıcı Adı:** Secure Storage ile şifrelenmiş olarak saklanmaktadır.
- **Şifre:** Güvenlik amacıyla hashlenerek saklanmaktadır.

## 📂 Kullanılan Teknolojiler
- **Flutter**: Mobil uygulama geliştirme
- **Dart**: Programlama dili
- **Flutter Secure Storage**: Güvenli veri saklama
- **Crypto**: Şifreleme ve hashleme işlemleri

## 🚀 Kurulum
1. **Depoyu klonlayın:**
   ```sh
   git clone https://github.com/kullaniciAdi/LezzetKod.git
   cd LezzetKod
   ```
2. **Gerekli bağımlılıkları yükleyin:**
   ```sh
   flutter pub get
   ```
3. **Uygulamayı çalıştırın:**
   ```sh
   flutter run
   ```

## 📌 Gelecek Güncellemeler
- 📸 Tariflere resim ekleme
- ☁️ Bulut senkronizasyonu ekleme
- 🔖 Kategorilere göre filtreleme

## 🤝 Grup Üyelerinin Katkısı
Bu proje bireysel olarak geliştirilmiştir. Tüm kodlama, tasarım ve geliştirme süreçleri tek başıma yürütülmüştür.

## 📞 İletişim
- 📧 Email: edagl0321@gmail.com
- 🌍 [GitHub](https://github.com/kullaniciAdi/LezzetKod)

---
