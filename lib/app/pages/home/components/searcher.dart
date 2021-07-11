import 'package:flutter/material.dart';

class Searcher extends StatefulWidget {
  const Searcher({Key? key, required this.onQueryChanged}) : super(key: key);

  final void Function(String) onQueryChanged;

  @override
  State<StatefulWidget> createState() => _SearcherState();
}

class _SearcherState extends State<Searcher> {
  static const appBarMaxBg = 'assets/images/home_bg.png';

  static const appBarMinBg = 'assets/images/home_min_bg.png';

  static const maxBgSize = 224.0;

  static const minBgSize = maxBgSize - 113;

  bool minBg = false;

  void setBgMin(bool min) {
    setState(() {
      minBg = min;
    });
  }

  void queryChanged(String text) {
    if (text.length > 2) {
      setBgMin(true);
    } else {
      setBgMin(false);
    }
    widget.onQueryChanged(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            child: AnimatedCrossFade(
              crossFadeState:
                  minBg ? CrossFadeState.showSecond : CrossFadeState.showFirst,
              duration: Duration(milliseconds: 200),
              firstChild: Image(
                image: AssetImage(appBarMaxBg),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              secondChild: Image(
                image: AssetImage(appBarMinBg),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            alignment: Alignment.topCenter,
            height: minBg ? minBgSize : maxBgSize,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: queryChanged,
              decoration: InputDecoration(
                hintText: 'Pesquise por uma empresa',
                prefixIcon: Icon(Icons.search_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
