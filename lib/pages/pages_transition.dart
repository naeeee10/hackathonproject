import 'package:fitness_checker_app/pages/chatpage.dart';
import 'package:fitness_checker_app/pages/homepage.dart';
import 'package:flutter/material.dart';

class PagesTransition extends StatefulWidget {
  const PagesTransition({super.key});

  @override
  State<PagesTransition> createState() => _PagesTransitionState();
}

class _PagesTransitionState extends State<PagesTransition> {
  List<Widget> pagesList = const [
    Homepage(),
    Chatpage(),
  ];

  late int currentPageState;

  @override
  void initState() {
    super.initState();
    currentPageState = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        surfaceTintColor: Theme.of(context).primaryColor,
        title: TextButton(
          onPressed: () {
            setState(
              () {
                currentPageState = 0;
              },
            );
          },
          child: Text(
            "Fitness",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
            ),
            child: IconButton(
              onPressed: () {
                setState(
                  () {
                    currentPageState = 1;
                  },
                );
              },
              icon: Icon(
                currentPageState == 2
                    ? Icons.chat_bubble_sharp
                    : Icons.chat_bubble_outline_sharp,
                color: currentPageState == 2
                    ? const Color.fromARGB(255, 27, 121, 41)
                    : Colors.black,
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: IconButton(
            onPressed: () {
              setState(
                () {
                  currentPageState = 0;
                },
              );
            },
            icon: Icon(
              currentPageState == 0 ? Icons.home : Icons.home_outlined,
              color: currentPageState == 1
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : Colors.black,
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 237, 236, 236),
      body: IndexedStack(
        index: currentPageState,
        children: pagesList,
      ),
    );
  }
}
