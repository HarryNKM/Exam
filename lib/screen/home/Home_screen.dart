import 'package:examapp2/global.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedcategory = "all";
  bool isNike = false;
  bool isPuma = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffDEEFF7),
        appBar: AppBar(
          backgroundColor: const Color(0xffDEEFF7),
          leading: const Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'cart');
                  },
                  child: const Icon(Icons.card_travel_outlined)),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Find Shoes",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        const Icon(Icons.search_sharp),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Categories",
                style: TextStyle(fontSize: 35, color: Color(0xff373C65)),
              ),
              DropdownButton(
                value: selectedcategory,
                items: const [
                  DropdownMenuItem(child: Text("All"), value: "all"),
                  DropdownMenuItem(child: Text("Nike"), value: "nike"),
                  DropdownMenuItem(child: Text("Puma"), value: "puma"),
                ],
                onChanged: (String? value) {
                  setState(() {
                    selectedcategory = value;
                    if (value == "nike") {
                      isNike = true;
                      isPuma = false;
                    } else if (value == "puma") {
                      isNike = false;
                      isPuma = true;
                    } else {
                      isNike = true;
                      isPuma = true;
                    }
                  });
                },
                isExpanded: true,
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Nike",
                style: TextStyle(color: Color(0xff373C65), fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: procutList
                      .map(
                        (e) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'detail',
                                arguments: e);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/shoes1.png",
                                      height: 100,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e['name'],
                                      style: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.black,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      e['price'],
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.amber,
                                        ),
                                        Icon(Icons.star,
                                            size: 15, color: Colors.amber),
                                        Icon(Icons.star,
                                            size: 15, color: Colors.amber),
                                        Icon(Icons.star,
                                            size: 15, color: Colors.amber),
                                        Icon(Icons.star,
                                            size: 15, color: Colors.amber),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Puma",
                style: TextStyle(color: Color(0xff373C65), fontSize: 20),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: pumaList
                      .map(
                        (e) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'detail',
                                arguments: e);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/shoes1.png",
                                      height: 100,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e['name'],
                                      style: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.black,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      e['price'],
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.amber,
                                        ),
                                        Icon(Icons.star,
                                            size: 15, color: Colors.amber),
                                        Icon(Icons.star,
                                            size: 15, color: Colors.amber),
                                        Icon(Icons.star,
                                            size: 15, color: Colors.amber),
                                        Icon(Icons.star,
                                            size: 15, color: Colors.amber),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
