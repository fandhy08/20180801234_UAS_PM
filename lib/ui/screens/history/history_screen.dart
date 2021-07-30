import 'package:flutter/material.dart';
import '../../../util/responsive.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  TextStyle _styleTitle;
  Responsive _size;
  @override
  void initState() {
    _styleTitle = TextStyle(fontSize: 16);
    _size = new Responsive(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: Text(
                "Dunia baru",
                style: _styleTitle,
                textAlign: TextAlign.justify,
              ),
              subtitle: Text(
                "New world",
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: Text(
                "Selamat datang di Belitung",
                style: _styleTitle,
                textAlign: TextAlign.justify,
              ),
              subtitle: Text(
                "Welcome to Belitung",
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: Text(
                "Perkembangan teknologi",
                style: _styleTitle,
                textAlign: TextAlign.justify,
              ),
              subtitle: Text(
                "Technological development",
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: Text(
                "Bibit unggul",
                style: _styleTitle,
                textAlign: TextAlign.justify,
              ),
              subtitle: Text(
                "Quality seeds",
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}