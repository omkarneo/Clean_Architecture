import 'package:flutter/material.dart';

import '../../../getjokes/presentation/page/getjokes.dart';
import '../../../postop/presentation/pages/postdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("With Clean Architecture"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: ElevatedButton(
            child: const Text("Get with Clean Architecture"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GetNews(),
                  ));
            },
          ),
        ),
        Center(
          child: ElevatedButton(
            child: const Text("Post with Clean Architecture"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PostData(),
                  ));
            },
          ),
        ),
      ]),
    );
  }
}
