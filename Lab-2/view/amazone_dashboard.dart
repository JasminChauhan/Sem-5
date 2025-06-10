// import '../utils/import_export.dart';
//
// class AmazoneDashboard extends StatefulWidget {
//   const AmazoneDashboard({super.key});
//
//   @override
//   State<AmazoneDashboard> createState() => _AmazoneDashboardState();
// }
//
// class _AmazoneDashboardState extends State<AmazoneDashboard> {
//   TextEditingController searchcontroller = TextEditingController();
//
//   get index => null;
//   int _currentPage = 0;
//
//   final List<String> carouselImages = [
//     'https://i0.wp.com/magzoid.com/wp-content/uploads/2025/05/amazon-rebrand-2025_dezeen_2364_col_1-1.webp?resize=1024%2C576&ssl=1',
//     'https://images.unsplash.com/photo-1587049352836-6f9bb66f09b5?auto=format&fit=crop&w=800&q=80',
//     'https://images.unsplash.com/photo-1602524811770-0c7fbf0061b7?auto=format&fit=crop&w=800&q=80',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: Image.network(
//               "https://i0.wp.com/magzoid.com/wp-content/uploads/2025/05/amazon-rebrand-2025_dezeen_2364_col_1-1.webp?resize=1024%2C576&ssl=1"),
//           title: Center(
//             child: Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   border: Border.all(color: Colors.black12)),
//               child: TextFormField(
//                 controller: searchcontroller,
//                 decoration: InputDecoration(
//                   icon: Icon(Icons.search),
//                   labelText: "Search here..",
//                 ),
//               ),
//             ),
//           ),
//           actions: [
//             ElevatedButton(onPressed: () {}, child: Icon(Icons.shopping_cart))
//           ],
//           backgroundColor: Colors.blueAccent,
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 width: 412, // or MediaQuery.of(context).size.width
//                 height: 300,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: PageView(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 'https://i0.wp.com/magzoid.com/wp-content/uploads/2025/05/amazon-rebrand-2025_dezeen_2364_col_1-1.webp?resize=1024%2C576&ssl=1'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 'https://i0.wp.com/magzoid.com/wp-content/uploads/2025/05/amazon-rebrand-2025_dezeen_2364_col_1-1.webp?resize=1024%2C576&ssl=1'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 'https://i0.wp.com/magzoid.com/wp-content/uploads/2025/05/amazon-rebrand-2025_dezeen_2364_col_1-1.webp?resize=1024%2C576&ssl=1'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Card(
//                       elevation: 20,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(12.0),
//                         child: GridView.count(
//                           crossAxisCount: 2,
//                           shrinkWrap: true,
//                           mainAxisSpacing: 8,
//                           crossAxisSpacing: 8,
//                           children: List.generate(
//                             8,
//                             (i) => Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.blueAccent.withOpacity(0.2),
//                                 borderRadius: BorderRadius.circular(10),
//                                 border: Border.all(color: Colors.blueAccent),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   'Card 1',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ));
//   }
// }


import 'dart:async';
import 'package:flutter/material.dart';

class AmazoneDashboard extends StatefulWidget {
  const AmazoneDashboard({super.key});

  @override
  State<AmazoneDashboard> createState() => _AmazoneDashboardState();
}

class _AmazoneDashboardState extends State<AmazoneDashboard> {
  TextEditingController searchcontroller = TextEditingController();

  PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> carouselImages = [
    'https://i0.wp.com/magzoid.com/wp-content/uploads/2025/05/amazon-rebrand-2025_dezeen_2364_col_1-1.webp?resize=1024%2C576&ssl=1',
    'https://i0.wp.com/magzoid.com/wp-content/uploads/2025/05/amazon-rebrand-2025_dezeen_2364_col_1-1.webp?resize=1024%2C576&ssl=1',
    'https://i0.wp.com/magzoid.com/wp-content/uploads/2025/05/amazon-rebrand-2025_dezeen_2364_col_1-1.webp?resize=1024%2C576&ssl=1',
  ];

  @override
  void initState() {
    super.initState();

    // Auto-slide timer for carousel
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        if (_currentPage < carouselImages.length - 1) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildCarousel() {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: PageView.builder(
            controller: _pageController,
            itemCount: carouselImages.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(carouselImages[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            carouselImages.length,
                (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index
                    ? Colors.blueAccent
                    : Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          "https://i0.wp.com/magzoid.com/wp-content/uploads/2025/05/amazon-rebrand-2025_dezeen_2364_col_1-1.webp?resize=1024%2C576&ssl=1",
          fit: BoxFit.cover,
        ),
        title: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black12),
            ),
            child: TextFormField(
              controller: searchcontroller,
              decoration: const InputDecoration(
                icon: Icon(Icons.search),
                labelText: "Search here..",
              ),
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.shopping_cart),
          ),
        ],
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildCarousel(),
            ),

            // Grid View Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 3 / 2,
                    ),
                    itemBuilder: (context, i) => Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueAccent),
                      ),
                      child: const Center(
                        child: Text(
                          'Card 1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
