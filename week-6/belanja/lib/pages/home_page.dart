import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar', 
      imagePath: 'images/gula.jpeg',
      stock: 4,
      rate: 4.6,
      price: 5000),
    Item(
      name: 'Salt', 
      imagePath: 'images/garam.jpeg',
      stock: 5,
      rate: 4.3,
      price: 2000)
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD0BCFF),
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.9, // Sesuaikan agar proporsi gambar lebih pas
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              // onTap: () {
              //   Navigator.pushNamed(context, '/item', arguments: item);    << sebelum menggunakan implementasi go_router
              // },
              onTap: () => context.push('/item', extra: item),             // << setelah implementasi go_router
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Mengurangi ruang kosong di bawah
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Hero(
                      tag: item.name, // Menggunakan nama sebagai tag unik,
                      child: AspectRatio(
                        aspectRatio: 1.5, // Menyesuaikan aspect ratio
                        child: Image.asset(
                          item.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star, 
                                    color: Colors.orange,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    item.rate.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Rp ${item.price}',
                            style: const TextStyle(fontSize: 14),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              const Text('Stock: '),
                              Text(
                                item.stock.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
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
