import 'package:flutter/material.dart';
import 'package:mi_mvvm_sip/views/cat_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CatView(),
              ),
            );
          },
          child: const Text('Go to Cat View'),
        ),
      ),
    );
  }
}