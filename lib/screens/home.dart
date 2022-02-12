import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0C1015),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0XFF1B2027),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            child: const Text(
              "Find the best \ncoffee for you",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 38.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              cursorColor: Colors.white,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: "Find your Coffee",
                labelStyle: const TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
                prefixIconColor: Colors.white,
                focusColor: Colors.white,
                fillColor: const Color(0xff141921),
                filled: true,
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            labelStyle: const TextStyle(
              fontSize: 14.0,
            ),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.grey[800],
            isScrollable: true,
            tabs: const [
              Tab(
                text: "Cappuccino",
              ),
              Tab(
                text: "Espresso",
              ),
              Tab(
                text: "Latte",
              ),
              Tab(
                text: "Pakistani",
              ),
              Tab(
                text: "Moetto",
              ),
              Tab(
                text: "Mocha",
              ),
              Tab(
                text: "Oddio",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
