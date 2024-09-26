import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mi_mvvm_sip/viewmodels/cat_viewmodel.dart';

class CatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CatViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cat'),
        ),
        body: Center(
          child: Consumer<CatViewModel>(
            builder: (context, model, child) {
              if (model.isLoading) {
                return const CircularProgressIndicator();
              }

              if (model.cat == null) {
                return const Text('No cat found');
              }

              return Column(
                children: [
                  Image.network(model.cat!.url, width: model.cat!.width.toDouble(), height: model.cat!.height.toDouble()),
                  ElevatedButton(
                    onPressed: () {
                      model.fetchCat();
                    },
                    child: const Text('New Cat'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}