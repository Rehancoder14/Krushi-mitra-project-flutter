import 'package:flutter/material.dart';

class MidCart extends StatefulWidget {
  const MidCart({super.key});

  @override
  State<MidCart> createState() => _MidCartState();
}

class _MidCartState extends State<MidCart> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    List Images = [
      "florofix.png",
      "Jindal.png",
      "heliox.png",
      "Mandoz.png",
      "seminis.png",
      "stellar.png"
    ];
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Card(
        child: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 20, top: 15),
            height: 300,
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.center,
              child: TabBar(
                controller: _tabController,
                tabs: [
                  ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15),
                        width: 300,
                        height: 335,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/${Images[index]}"),
                                fit: BoxFit.cover)),
                      );
                    },
                  )
                ],
              ),
            )),
      ),
    );
  }
}
