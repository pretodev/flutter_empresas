import 'package:empresas_flutter/app/pages/home/components/ioasys_loading.dart';
import 'package:empresas_flutter/app/pages/home/components/searcher.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Searcher(
            onQueryChanged: (query) {},
          ),
          Expanded(
            child: Center(
              child: IoasysLoading(),
            ),
          )
        ],
      ),
    );
  }
}
