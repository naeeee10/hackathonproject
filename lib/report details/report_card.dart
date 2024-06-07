import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final String reportTitle;
  final String reportData;
  final String? reportMeasurementUnit;
  final IconData reportCardIcon;
  final Color reportCardColor;
  final Color? reportCardIconColor;
  // final double reportCardHeight;
  // final double reportCardWidth;
  const ReportCard({
    super.key,
    required this.reportTitle,
    required this.reportData,
    this.reportMeasurementUnit,
    required this.reportCardIcon,
    required this.reportCardColor,
    this.reportCardIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 90,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 8.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: reportCardColor,
            border: Border.all(),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            leading: Icon(
              reportCardIcon,
              size: 35,
            ),
            title: Text(
              reportTitle,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            subtitle: Text(
              reportData,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "Edit $reportTitle",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      content: TextField(
                        decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          prefixIcon: const Icon(
                            Icons.search_sharp,
                            color: Colors.grey,
                          ),
                          filled: true,
                          hintText: "Enter $reportTitle",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.edit_sharp),
            ),
            titleAlignment: ListTileTitleAlignment.center,
          ),
        ),
      ),
    );
  }
}
