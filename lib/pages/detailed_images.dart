import 'package:flutter/material.dart';


class DetailedImagesPage extends StatefulWidget {
  const DetailedImagesPage({super.key});

  @override
  _DetailedImagesPageState createState() => _DetailedImagesPageState();
}

class _DetailedImagesPageState extends State<DetailedImagesPage> {
  List<String> images = [
    'assets/interior_0.jpg',
    'assets/interior_1.jpg',
    'assets/interior_3.jpg',
  ];
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              images[selectedImageIndex],
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImageIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      images[index],
                      width: 100,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}