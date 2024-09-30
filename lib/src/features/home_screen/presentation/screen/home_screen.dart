import 'dart:async'; // Import this for the Timer
import 'package:e_commerce/src/core/utils/palette.dart';
import 'package:e_commerce/src/features/home_screen/presentation/widgets/category_buttons.dart';
import 'package:e_commerce/src/features/home_screen/presentation/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Auto-slide timer for the banner
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        backgroundColor: Palette.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Palette.black,
            ),
            onPressed: () {},
          ),
        ],
        title: const Text(
          'ZEROX',
          style: TextStyle(
            color: Palette.black,
            fontSize: 19,
            fontWeight: FontWeight.w700,
            letterSpacing: 2,
            fontFamily: 'Roboto', // Add the desired font family
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search here...',
                  prefixIcon: const Icon(CupertinoIcons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Palette.white,
                ),
              ),
              const SizedBox(height: 16),

              // Sliding Image Banner
              SizedBox(
                height: 120,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: [
                    _buildBannerItem('assets/home/earbuds.jpeg',
                        'UPTO 60% OFF\nSchool Collections'),
                    _buildBannerItem('assets/home/airpods.jpg',
                        'SUMMER SALE\nUp to 40% OFF'),
                    _buildBannerItem(
                        'assets/home/mobile-accessories-design-template-1d136ae1d70218d654633496c8081545.jpg',
                        'WINTER DEALS\nExclusive Offers'),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Dots Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => _buildDot(index)),
              ),
              const SizedBox(height: 16),

              // Category Section
              const Text(
                'Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryIcon(
                      icon: Icons.phone_android,
                      label: 'Mobile',
                      color: Palette.purple),
                  CategoryIcon(
                      icon: Icons.headphones,
                      label: 'Headphones',
                      color: Palette.yellow),
                  CategoryIcon(
                      icon: Icons.watch, label: 'Watches', color: Palette.pink),
                  CategoryIcon(
                      icon: Icons.abc, label: 'Charger', color: Palette.green),
                  CategoryIcon(
                      icon: Icons.grid_view_outlined,
                      label: 'All',
                      color: Palette.blue),
                ],
              ),
              const SizedBox(height: 16),

              // Recent Products Section
              const Text(
                'Recent Product',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // Product Grid
              GridView.builder(
                physics:
                    const NeverScrollableScrollPhysics(), // Disable scroll for GridView
                shrinkWrap:
                    true, // Make GridView take only as much space as it needs
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 11.5,
                  crossAxisSpacing: 11.5,
                  childAspectRatio: 0.75,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  // Replace with your product data
                  return const [
                    ProductCard(
                      imageUrl: 'assets/home/earbuds.jpeg',
                      name: 'The Apple AirPods',
                      price: '\$189.87',
                    ),
                    ProductCard(
                      imageUrl: 'assets/home/iphone.png',
                      name: 'iPhone 15 Pro Max',
                      price: '\$1,199',
                    ),
                    ProductCard(
                      imageUrl: 'assets/home/mobile_stand.png',
                      name: 'Mobile Stand',
                      price: '\$19.99',
                    ),
                    ProductCard(
                      imageUrl: 'assets/home/airpods.jpg',
                      name: 'Apple Airpods',
                      price: '\$299.99',
                    ),
                    ProductCard(
                      imageUrl: 'assets/home/earbuds.jpeg',
                      name: 'The Apple AirPods',
                      price: '\$189.87',
                    ),
                    ProductCard(
                      imageUrl: 'assets/home/iphone.png',
                      name: 'iPhone 15 Pro Max',
                      price: '\$1,199',
                    ),
                    ProductCard(
                      imageUrl: 'assets/home/mobile_stand.png',
                      name: 'Mobile Stand',
                      price: '\$19.99',
                    ),
                    ProductCard(
                      imageUrl: 'assets/home/airpods.jpg',
                      name: 'Apple Airpods',
                      price: '\$299.99',
                    ),
                  ][index];
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlists'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Palette.primaryColor,
        unselectedItemColor: Palette.grey,
      ),
    );
  }

  Widget _buildBannerItem(String imageUrl, String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Palette.white,
            backgroundColor: Palette.black54,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: _currentPage == index ? 12.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Palette.primaryColor : Palette.grey,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
