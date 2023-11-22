# smart_waroeng

Nama    : Syifa Kaffa Billah

NPM     : 2206816430

Kelas   : PBP-C

<details>
<summary> <b> TUGAS 9 </b> </summary>
   
**1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**

Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Namun, hal tersebut bisa dilakukan jika kita tidak memperlukan mapping data pada aplikasi kita. Selain itu, hal ini juga bisa dilakukan jika tipe data yang kita miliki adalah data yang dinamis, sebab data tersebut dapat mewakili objek JSON. Namun, akan lebih baik secara prakteknya jika kita membuat model terlebih dahulu agar kode yang kita buat lebih mudah terbaca dan diketahui tipe datanya. 

**2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**

CookieRequest berfungsi untuk mengelola permintaan HTTP dengan autentikasi berbasis cookie dan mengatur cookie untuk sesi pengguna. Diperlukan pembagian instance ke semua komponen agar cookie dapat dipertahankan sepanjang session.

**3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.**

Pertama, buat terlebih dahulu model sesuai dengan respons dari data JSON tersebut. Lalu, kita buat suatu http request ke web untuk melakukan fetch data. Untuk tugas ini, data diambil dari aplikasi webbb django tugas sebelumnya. Terakhir, data ditampilkan pada flutter melalui widget. 
 
**4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**

Pada halaman login (LoginPage), user akan diminta input berupa username serta passwordnya untuk diisi. Username dan password  tersebut akan dikirim ke method login yang ada di app authentication yang ada pada web Django. Jika username dan password benar, maka method tersebut akan me-return status True dan user dapat masuk ke dalam aplikasi.
 
**5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.**
| Layout Widget | Konteks Penggunaan |
| ----- | ----- |
| ElevatedButton | digunakan karena untuk memberikan tampilann yang menarik dan memberikan feedback visual kepada user saat tombol ditekan (tombolnya "elevated") |
| TextField | digunakan karena data yang saya butuhkan barupa input teks atau angka (untuk login) |
| SizedBox | memberikan dimensi tetap, baik lebar, tinggi, atau keduanya, pada elemen anaknya|
| Text | untuk menampilkan tulisan (detail product) dengan style yang sesuai |
| Icon | menampilkan ikon yang sesuai |
 
**6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**
- Membuat app baru bernama authentication pada proyek django sbeelumnya. Lalu melakukan beberapa settings pada setting.py nya.
- Membuat views untuk authentication yang nantinya akan digunakan pada saat login.
- Menginstal package Flutter untuk melakukan kontak dengan webservice django.
- Membuat file untuk login, yaitu login.dart di folder screens, lalu mengimplementasikan kode nya.
- membuat model kustom dengan bantuan web Quicktype, lalu menambahkan dependency http nya.
- Membuat file list_product.dart untuk tampilan "Lihat Item". Disini dilakukan fetch data dari Django tugas sebelumnya. Pada file ini, akan ditambilkan seluruh item yang ada di database django tugas sebelumnya, dan saya membuat ontap pada setiap item yang bis aberalih ke page deail product.
- Membuat file detail product untuk menapilkan dtail suatu product.
- Mengisi readme. 
</details>

<details>
<summary> <b> TUGAS 8 </b> </summary>
   
### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Sebenarnya, kedua method tersebut mirip karena keduanya digunakan untuk melakukan navigasi atau perpindahan antar halaman dalam aplikasi Flutter. Namun, terdapat perbedaan dasar antar keduanya, yaitu terletak pada apa yang dilakukan kepada route yang berada pada atas stack.

1. Navigator.push() : Menambahkan route baru diatas route yang sudah ada pada atas stack, sehingga pengguna dapat kembali ke halaman sebelumnya menggunakan tombol kembali. Contohnya yaitu, saat pengguna menekan tombol "Tambah item", route ShopFormPage() akan di add di atas stack dan saat halaman ShopFormPage sudah ditampilkan, pengguna dapat menekan tombol kembali ke halaman menu.
2. Navigator.pushReplacement() : Menggantikan route yang sudah ada pada atas stack dengan route baru tersebut, sehingga cocok digunakan ketika ingin mengganti halaman saat ini dengan halaman baru dan tidak ingin pengguna kembali ke halaman sebelumnya. Contohnya yaitu pada saat tombol "tambah item" yang ada pada left_drawer.dart dan beralih ke page form tambah item, saat pengguna menekan tombol kembali, maka pengguna tidak dapat kembali ke halaman utama aplikasi.

### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

| Layout Widget | Konteks Penggunaan |
| ----- | ----- |
| Container | mengkombinasi common painting, positioning, dan sizing widgets |
| Coloumn | layouts (mengatur tata letak) daftar child widget dalam arah vertikal |
| Row | melakukan layouts (mengatur tata letak) daftar child widgets dalam arah horizontal |
| Expanded | memberikan ruang tambahan kepada elemen anaknya dalam Column, flex atau Row.|
| SizedBox | memberikan dimensi tetap, baik lebar, tinggi, atau keduanya, pada elemen anaknya.|
| Padding | menyisipkan turunannya berdasarkan padding yang diberikan.|
| GridView | menampilkan elemen-elemen dalam bentuk grid, baik vertikal atau horizontal|
| Wrap | Widget yang menampilkan turunannya dalam beberapa proses horizontal atau vertikal.|
| Stack |  memungkinkan penumpukan elemen-elemen satu di atas yang lain. Digunakan ketika Anda ingin menumpuk beberapa widget.|
| ListView | membuat daftar gulir (scrollable) dari elemen-elemen. Ideal untuk menampilkan daftar panjang atau dinamis|

### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
| Elemen Input Form | Alasan |
| ----- | ----- |
| TextFormField() | digunakan karena data yang saya butuhkan barupa input teks atau angka|
| ElevatedButton | digunakan karena untuk memberikan tampilann yang menarik dan memberikan feedback visual kepada user saat tombol ditekan |

### Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean architecture ditujukan untuk memisahkan kode untuk business-logic dengan kode yang berhubungan dengan platform seperti UI, state management, dan sumber data eksternal. Melalui clean architecture, kode yang kita tulis dapat lebih mudah untuk diuji secara independen. Clean architecture sendiri dalam penerapannya membagi project kedalam 3 lapisan, yaitu: 

1. Lapisan data & platform : Lapisan paling luar yang membangun tampilan aplikasi serta terdiri dari sumber data seperti Resp API, local database, dll. 
2. Lapisan presentation : Lapisan yang terdiri dari kode yang menjembatani komunikasi antara data dengan tampilan aplikasi yang disebut repository. 
3. Lapisan domain : Lapisan terdalam yang terdiri dari kode-kode business-logic aplikasi seperti entities dan usecases.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
- Membuat halaman formulir (smart_waroeng_form.dart) untuk saat tombol "Tambah Item" ditekan. Didalamnya, terdapat tiga elemen input yang menggunakan TextFormField dengan nama name, amount, dan description. 
- Membuat tombol save pada smart_waroeng_form.dart yang hanya bisa ditekan (memunculkan aksi) saat semua elemen field terisi.
- Membuat pop up informasi input pengguna saat tombol save berhasil ditekan.
- Membuat file baru left_drawer.dart yang akan berisi "Halaman Utama" untuk mengarahkan ke homePage dan "Tambah Item" untuk mengarahkan ke halaman smart_waroeng_form.dart (mengisi tambah item)
- Untuk soal bonus :
   -Pada main.dart, saya membuat sebuah list untuk menyimpan semua model yang sudah diinstansiasi. Saya juga membuat file mode.dart untuk membuat model.
   - Membuat berkas lihat_item.dart untuk menampilkan semua yang item yang diinput pengguna.
- menjawab readme dan melakukan add-commit-push ke Github.
</details>

<details>
<summary> <b> TUGAS 7 </b> </summary>
   
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
</details>

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
