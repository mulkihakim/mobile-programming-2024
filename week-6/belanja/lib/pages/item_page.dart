import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;   << sebelum menggunakan implementasi go_router
    final itemArgs = GoRouterState.of(context).extra as Item;              // << setelah implementasi go_router

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Item'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 8)),
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Hero(
              tag: itemArgs.name, // Pastikan tag ini sama dengan yang ada di halaman sebelumnya
              child: Image.asset(
                itemArgs.imagePath,
                fit: BoxFit.cover,
                height: 300, // Sesuaikan ukuran gambar
                width: double.infinity,
              ),
            ),
          ),
                    const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama: ${itemArgs.name}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Harga: Rp ${itemArgs.price}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text(
                  "Stock: ${itemArgs.stock}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text(
                  "Rating: ${itemArgs.rate}",
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: Theme.of(context).colorScheme.inversePrimary,
        child: const Text(
          "Nama: Mulki Hakim | NIM: 2241720131",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}