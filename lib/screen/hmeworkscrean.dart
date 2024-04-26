import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondlesson/utils/extetions.dart';

class Homework extends StatelessWidget {
  List<List<dynamic>> list = [
    ["du", "01", false],
    ["se", "02", false],
    ["cho", "03", false],
    ["pa", "04", false],
    ["ju", "05", false],
    ["sha", "06", true],
    ["ya", "07", false]
  ];
  Widget calandarday(String weekday, String day, bool isselected) {
    return Column(
      children: <Widget>[
        Text(weekday),
        Container(
          padding: EdgeInsets.all(8),
          child: Text(day),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400), shape: BoxShape.circle, color: isselected == false ? Colors.white : Colors.blue),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60,
        backgroundColor: Colors.blueAccent[200],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.back,
          ),
          style: IconButton.styleFrom(
              side: BorderSide(
            color: Colors.grey.shade400,
          )),
        ),
        centerTitle: true,
        title: const Text("Homework"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.ellipsis,
            ),
            style: IconButton.styleFrom(side: BorderSide(color: Colors.grey.shade400)),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[for (var i in list) calandarday(i[0].toString(), i[1].toString(), i[2])],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "english homework".capitalize(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
