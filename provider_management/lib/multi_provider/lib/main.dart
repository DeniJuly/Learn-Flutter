import 'package:flutter/material.dart';
import 'package:multi_provider/cart.dart';
import 'package:multi_provider/money.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Cart>(create: (context) => Cart()),
        ChangeNotifierProvider<Money>(create: (context) => Money())
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff57BE6E),
          title: Text('Multi Provider'),
        ),
        floatingActionButton: Consumer<Money>(
          builder: (context, money, _) => Consumer<Cart>(
            builder: (context, cart, _) => FloatingActionButton(
              backgroundColor: Color(0xff57BE6E),
              onPressed: () {
                if (money.money >= 500) {
                  money.money = money.money - 500;
                  cart.cartCount = cart.cartCount + 1;
                }
              },
              child: Icon(Icons.add_shopping_cart),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                      color: Color(0xffE6F5F0),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xff57BE6E))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Saldo',
                        style: TextStyle(fontSize: 18),
                      ),
                      Consumer<Money>(
                        builder: (context, money, _) => Text(
                          'Rp' + money.money.toString(),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color(0xff57BE6E),
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Apel',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Rp500',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                    Consumer<Cart>(
                      builder: (context, cart, _) => Text(
                        'Rp' + (cart.cartCount * 500).toString(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
