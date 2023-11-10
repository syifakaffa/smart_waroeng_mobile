import 'package:flutter/material.dart';
import 'package:smart_waroeng/screens/menu.dart';
import 'package:smart_waroeng/screens/smartwaroeng_form.dart';

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  Color getButtonColor(ShopItem item) {
    if (item.name == "Lihat Item") {
      return Colors.teal.shade300; // Ubah warna sesuai kebutuhan
    } else if (item.name == "Tambah Item") {
      return Colors.indigo.shade300; // Ubah warna sesuai kebutuhan
    } else if (item.name == "Logout") {
      return Colors.red.shade300; // Ubah warna sesuai kebutuhan
    } else {
      return Colors.indigo; // Warna default
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: getButtonColor(item), // Gunakan warna sesuai nama tombol
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Item") {
            // Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                  ));
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}