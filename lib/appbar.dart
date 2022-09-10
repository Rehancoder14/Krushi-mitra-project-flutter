import 'package:agrostart/searchpage.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      leadingWidth: 30,
      leading: IconButton(
        icon: const Icon(
          Icons.person,
          size: 30,
        ),
        onPressed: () {
          //space for functions
        },
      ),
      title: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        alignment: Alignment.center,
        height: 40,
        width: 200,
        child: Center(
          child: TextField(
            autofocus: false,
            controller: TextEditingController(),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              hintText: "Search here....",
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage()));
            },
          ),
        ),
      ),
      actions: [
        const SizedBox(
          width: 15,
        ),
        Row(
          children: [
            Image.asset(
              "assets/rs.png",
              height: 30,
            ),
            const Text(
              "100",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        const Icon(
          Icons.shopping_bag,
          size: 30,
        ),
        const SizedBox(
          width: 15,
        ),
        const Icon(
          Icons.notifications,
          size: 30,
        ),
        const Padding(padding: EdgeInsets.only(right: 10)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
