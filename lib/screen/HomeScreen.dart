import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/provider/coffe_provider.dart';
import 'package:test_provider/screen/cart_page.dart';
import 'package:test_provider/screen/coldbrew.dart';
import 'package:test_provider/screen/my_list_screen.dart';
import 'package:test_provider/screen/starBucks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int cartItemCount = 0; // Variable to keep track of cart items count
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    var moviesProvider = context.watch<MovieProvider>();
    var myList = moviesProvider.myList;

    // Get the total count of items in the favorites list
    int favoritesCount = myList.length;

    return Scaffold(
      appBar: AppBar(
        bottom: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          backgroundColor: Color.fromARGB(255, 30, 26, 26),
          title: Text(
            'Great coffee\nanytime anywhere',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 30, 26, 26),
        actions: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqVyiI1XClbT2Ue-7CGVAp8sKoqe_068R9zw&usqp=CAU',
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 26, 25, 25),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              labelColor: Colors.orange,
              indicatorColor: Colors.orange,
              indicatorWeight: 0.1,
              dividerColor: Color.fromARGB(255, 26, 25, 25),
              tabs: [
                Tab(text: 'Cappuccino'),
                Tab(text: 'Cold Brew'),
                Tab(text: 'Starbucks'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.all(8.0),
                        sliver: SliverGrid.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 10 / 16,
                          children: List.generate(
                            moviesProvider.coffes.length,
                            (index) {
                              final currentCoffe = moviesProvider.coffes[index];
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  key: ValueKey(currentCoffe.title),
                                  color: Colors.black38,
                                  elevation: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              child: Image.network(
                                                currentCoffe.imageUrl,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.favorite,
                                                color: myList
                                                        .contains(currentCoffe)
                                                    ? Colors.red
                                                    : Colors.white,
                                                size: 25,
                                              ),
                                              onPressed: () {
                                                if (!myList
                                                    .contains(currentCoffe)) {
                                                  moviesProvider
                                                      .addToList(currentCoffe);
                                                } else {
                                                  moviesProvider.removeFromList(
                                                      currentCoffe);
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                        Text(
                                          currentCoffe.title,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(height: 4),
                                        const Text('Dark Rost',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text('\$7.00',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            IconButton(
                                              icon: Icon(Icons.remove,
                                                  size: 20,
                                                  color: Colors.white),
                                              onPressed: () {
                                                setState(() {
                                                  if (currentCoffe.quantity >
                                                      0) {
                                                    currentCoffe.quantity--;
                                                    cartItemCount--; // Update cart count
                                                  }
                                                });
                                              },
                                            ),
                                            Text(
                                              '${currentCoffe.quantity}',
                                              style: const TextStyle(
                                                  color: Colors.orange),
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.add,
                                                  size: 20,
                                                  color: Colors.white),
                                              onPressed: () {
                                                setState(() {
                                                  currentCoffe.quantity++;
                                                  cartItemCount++; // Update cart count
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  ColdBrew(),
                  StarbucksCard(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.orange),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        backgroundColor: Color.fromARGB(255, 30, 26, 26),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.orange,
              size: 35,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(
                  Icons.favorite,
                  color: Colors.grey,
                  size: 35,
                ),
                if (favoritesCount > 0)
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 8,
                      child: Text(
                        '$favoritesCount',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                  size: 35,
                ),
                if (cartItemCount > 0)
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 8,
                      child: Text(
                        '$cartItemCount',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            if (_selectedIndex == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            } else if (_selectedIndex == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyListScreen()),
              );
            }
          });
        },
      ),
    );
  }
}
