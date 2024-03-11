import 'package:flutter/material.dart';
import 'package:test_provider/screen/HomeScreen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://c0.wallpaperflare.com/preview/849/772/43/coffee-espresso-stool-dark.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 80.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.s,
                  children: [
                    Hero(
                      tag: 'coffee_icon', // Unique tag for the coffee icon Hero
                      child: const Icon(
                        Icons.coffee,
                        color: Color.fromARGB(255, 215, 114, 7),
                      ),
                    ),
                    const Text(
                      'COFFEE',
                      style: TextStyle(
                        color: Color.fromARGB(255, 215, 114, 7),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 35,),
                    Container(
                      
                      // alignment: Alignment.topLeft,
                      
                      // transformAlignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Enjoy',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Premium coffe',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'the',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  ' coolest',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'of flavours',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 450,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 197, 109, 77),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                        child: Text(
                          'Get Start',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
