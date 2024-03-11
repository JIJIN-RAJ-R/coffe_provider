import 'package:flutter/material.dart';

class StarbucksCard extends StatelessWidget {
  const StarbucksCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 10 / 16,
            children: [
              Card(
                color: Colors.black38,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Image.network(
                          'https://www.tastingtable.com/img/gallery/10-facts-you-should-know-about-starbucks-coffee-beans/intro-1692044384.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Dalogana Coffee',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Dark Roast',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '\$5.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Card(
                              color: Color.fromARGB(255, 162, 103, 82),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9),
                                ),
                              ),
                              // Adjust height as needed
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black38,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Image.network(
                          'https://c.ndtvimg.com/2019-11/hdmci5_starbucks_625x300_05_November_19.jpg?im=FaceCrop,algorithm=dnn,width=620,height=350',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Dalogana Coffee',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Dark Roast',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '\$5.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Card(
                              color: Color.fromARGB(255, 162, 103, 82),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9),
                                ),
                              ),
                              // Adjust height as needed
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black38,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsQygHA45wa7QFPliyH4JJ-FmmGRavBCvqMg&usqp=CAU',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Dalogana Coffee',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Dark Roast',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '\$5.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Card(
                              color: Color.fromARGB(255, 162, 103, 82),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9),
                                ),
                              ),
                              // Adjust height as needed
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black38,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Image.network(
                          'https://hips.hearstapps.com/del.h-cdn.co/assets/17/51/1600x1794/gallery-1513892402-starbucks-black-and-white-mocha-2.jpg?resize=640:*',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Dalogana Coffee',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Dark Roast',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '\$5.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Card(
                              color: Color.fromARGB(255, 162, 103, 82),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9),
                                ),
                              ),
                              // Adjust height as needed
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black38,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Image.network(
                          'https://img.buzzfeed.com/buzzfeed-static/static/2023-06/20/19/asset/b550da347aec/sub-buzz-1738-1687287618-1.png?downsize=900:*&output-format=auto&output-quality=auto',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Dalogana Coffee',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Dark Roast',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '\$5.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Card(
                              color: Color.fromARGB(255, 162, 103, 82),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9),
                                ),
                              ),
                              // Adjust height as needed
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black38,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPXG0ADBt3lxjBwExuTaxjBKtEjAAAoA6Ox9aRDsU4Vo0ZsT42i5n3YNpfW-l7HKVnOPE&usqp=CAU',
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Dalogana Coffee',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Dark Roast',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '\$5.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Card(
                              color: Color.fromARGB(255, 162, 103, 82),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9),
                                ),
                              ),
                              // Adjust height as needed
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ], // closing children list properly
          ),
        ),
      ],
    );
  }
}
