import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  // Sample data for wishlist items
  final List<Map<String, String>> wishlistItems = [
    {
      'title': 'Apple iPhone 14',
      'image': 'assets/home/iphone.png',
      'price': '\$999'
    },
    {
      'title': 'Apple MacBook Pro',
      'image': 'assets/home/iphone.png',
      'price': '\$2499'
    },
    {
      'title': 'Apple Watch Series 7',
      'image': 'assets/home/iphone.png',
      'price': '\$399'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: wishlistItems.isEmpty
          ? Center(
              child: Text(
                'Your Wishlist is empty!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            )
          : ListView.builder(
              itemCount: wishlistItems.length,
              itemBuilder: (context, index) {
                return WishlistItemCard(
                  title: wishlistItems[index]['title']!,
                  image: wishlistItems[index]['image']!,
                  price: wishlistItems[index]['price']!,
                );
              },
            ),
    );
  }
}

class WishlistItemCard extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  const WishlistItemCard({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
