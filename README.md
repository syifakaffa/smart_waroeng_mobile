# smart_waroeng

Nama    : Syifa Kaffa Billah

NPM     : 2206816430

Kelas   : PBP-C

# TUGAS 7
**1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**
   
   Perbedaan utama antara stateless widget dan stateful widget dalam pengembangan aplikasi Flutter adalah cara keduanya mengelola state dan perilaku komponen UI aplikasi, misalnya:

**A. Stateless Widget:**
- komponen internalnya tidak akan berubah, misal pada properti atau tampilan widget.
- widgetnya dapat dibuat ulang dengan membuat instance widget baru.
- cocok untuk UI yang tidak perlu perubahan dinamis (tampilannya hanya berfungsi untuk tampilan baca)
  
**B. Statefull Widget:**
- komponen internalnya bisa berubah secara dinamis.
- memungkinkan komponen UI merespons perubahan tampilan dan interaksi pengguna.
- Digunakan unutk komponen UI yang memiliki tampilan atau interaksi yang dapat berubah secar dinamis, misal button.

**2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**
- AppBar : widgets bar yang menampilkan judul aplikasi "Smart Waroeng"
- SingleChildScrollView : widget wrapper yang dapat di scroll
- Padding : widgets yang menambahkan margin dari semua sisi
- Column : untuk menampilkan children secara vertikal
- Text : untuk menampilkan tulisan (PBP Shop) dengan style yang sesuai 
- Material : memberikan warna latar belakang
- InkWell : mengubah area di dalamnya menjadi responsive terhadap sentuhan.
- Container : widget yang mengelilingi ikon dan text
- Icon : menampilkan ikon yang sesuai
- Text : widget berupa text untuk menampilkan text

**3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)**
- Membuat program flutter pada direktori kerja smartWaroengMobile dengan nama app "smart_waroeng"
- membuat github dengan nama smat-wareong-mobile dan melakukan git init pada root folder direktori proyek.
- add commit push ke github proyek flutter sementara
- merapikan struktur proyek dengan membuat file menu.dart
- mengubah warna dan sifat widget page menu menjadi stateless
- membuat card untuk tombol lihat item, tambah item, dan logout.
- Membuat widget build, lalu mengatur agar snackbar muncul saat ketiga tombol sebelumnya ditekan pada agian  ScaffoldMessenger.of(context) sampai content Text yang muncul saat button ditekan.
- membuat readme jawaban pertanyaan
- add, commit, push ke github.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
