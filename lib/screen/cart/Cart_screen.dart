import 'package:examapp2/global.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffDEEFF7),
        appBar: AppBar(
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
          title: const Text(
            "Cart",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: cartList
                .map(
                  (e) => Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image.asset("assets/images/shoes1.png",height: 70,),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Text(
                                e['name'],
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                e['price'],
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Rate : 4.5",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  cartList.remove(e);
                                });
                              },
                              child: const Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
