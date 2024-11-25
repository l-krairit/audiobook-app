import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String dateStringOne = ('6:47:54');
    const String dateStringTwo = ('3:23:24');

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 40),
            child: Container(
              alignment: Alignment.topLeft,
              child: const Text('ฟังต่อ'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Container(
              padding: const EdgeInsets.all(10), // Padding inside the border
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1.5, // Border width
                ),
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('แอนิมอล ฟาร์ม by \nจอร์จ ออร์เวลล์'),
                  Text('เหลืออยู่ $dateStringOne'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Container(
              padding: const EdgeInsets.all(10), // Padding inside the border
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1.5, // Border width
                ),
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('แฮรี่พอตเตอร์ 1  by \nเจ.เค.โรว์ลิ่ง'),
                  Text('เหลืออยู่ $dateStringTwo'),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Left Button
            SizedBox(
              width: 80,
              height: 80,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                child: const Center(child: Icon(Icons.arrow_back)),
              ),
            ),
            // Center Button
            SizedBox(
              width: 100,
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                child: const Icon(Icons.play_arrow),
              ),
            ),
            // Right Button
            SizedBox(
              width: 80,
              height: 80,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                child: const Center(child: Icon(Icons.dehaze)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
