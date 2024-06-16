import 'package:fitness_checker_app/report%20details/report_card.dart';
import 'package:fitness_checker_app/utils/global_variables.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 18.0,
        left: 18.0,
        right: 18.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              fillColor: const Color.fromARGB(255, 255, 255, 255),
              prefixIcon: const Icon(
                Icons.search_sharp,
                color: Colors.grey,
              ),
              filled: true,
              hintText: "Search report details",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
              ),
              child: Text(
                "Report: ",
                textDirection: TextDirection.ltr,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 24,
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              height: 400,
              width: 500,
              alignment: Alignment.center,
              child: ListView.builder(
                itemCount: reportData.length,
                itemBuilder: (context, index) {
                  final report = reportData[index];
                  return ReportCard(
                    reportTitle: report["reportTitle"],
                    reportData: report["reportData"],
                    reportCardIcon: report[IconData],
                    reportCardColor: report[Color],
                    //reportCardIconColor: report["reportIconColor"]as Color,
                  );
                },
              ),
            ),
          )
          // SizedBox(
          //   height: 100,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: filterOptionsList.length,
          //     itemBuilder: (context, index) {
          //       final filter = filterOptionsList[index]["title"];
          //       return Padding(
          //         padding: const EdgeInsets.symmetric(
          //           horizontal: 16,
          //           vertical: 10,
          //         ),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             GestureDetector(
          //               onTap: () {
          //                 setState(() {});
          //                 _selectedFilter = filter.toString();
          //               },
          //               child: Chip(
          //                 backgroundColor: _selectedFilter == filter
          //                     ? const Color.fromARGB(255, 255, 255, 255)
          //                     : Theme.of(context).primaryColor,
          //                 label: Container(
          //                   constraints: const BoxConstraints(
          //                     maxWidth: 40,
          //                   ),
          //                   child: Image(
          //                     image: AssetImage(
          //                       filterOptionsList[index]["imageUrl"],
          //                     ),
          //                   ),
          //                 ),
          //                 side: const BorderSide(
          //                   style: BorderStyle.solid,
          //                   color: Color.fromARGB(255, 85, 85, 85),
          //                 ),
          //                 shape: const CircleBorder(),
          //               ),
          //             ),
          //             Text(
          //               filteroptionsText[index],
          //               style: const TextStyle(
          //                 color: Color.fromARGB(255, 70, 69, 69),
          //                 fontSize: 12.5,
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 8.0),
          //   child: Align(
          //     alignment: Alignment.centerLeft,
          //     child: Text(
          //       "ISSAC's Collection: ",
          //       textDirection: TextDirection.ltr,
          //       style: Theme.of(context).textTheme.displayLarge,
          //     ),
          //   ),
          // ),
          // Expanded(
          //   child: MasonryGridView.builder(
          //     gridDelegate:
          //         const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //     ),
          //     itemCount: issacsCollection.length,
          //     itemBuilder: (context, index) {
          //       final collection = issacsCollection[index];
          //       bool favoriteBool = collection["favorite"];
          //       return Padding(
          //         padding: const EdgeInsets.all(2.0),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             ProductCardDetails(collection: collection),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 //crossAxisAlignment: CrossAxisAlignment.end,
          //                 children: [
          //                   Column(
          //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text(
          //                         " ${collection["title"]} \n \$${collection["price"]}",
          //                         style:
          //                             Theme.of(context).textTheme.displayMedium,
          //                       ),
          //                     ],
          //                   ),
          //                   Column(
          //                     children: [
          //                       IconButton(
          //                         onPressed: () {
          //                           setState(
          //                             () {
          //                               favoriteBool = !favoriteBool;
          //                               collection["favorite"] = favoriteBool;
          //                               collection["favorite"] != favoriteBool
          //                                   ? collection["favorite"] =
          //                                       favoriteBool
          //                                   : collection["favorite"];
          //                               collection["favorite"] == true
          //                                   ? productId =
          //                                       collection["productId"]
          //                                   : productId = "null";
          //                             },
          //                           );
          //                           Provider.of<FavortieItemsProvider>(
          //                             context,
          //                             listen: false,
          //                           ).addToFavorite(collection);
          //                         },
          //                         icon: Icon(
          //                           favoriteBool
          //                               ? Icons.favorite_sharp
          //                               : Icons.favorite_border_sharp,
          //                           size: 20,
          //                           color: favoriteBool
          //                               ? Colors.red
          //                               : Colors.black,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
