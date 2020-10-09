import 'package:flutter/material.dart';
import 'package:wisata_app/datas/data_wisata.dart';

class DetailScreen extends StatefulWidget {
  final DataWisata;

  const DetailScreen({Key key, this.DataWisata}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  DataWisata _dataWisata;
  double _screenwidth;

  @override
  void initState() {
    _dataWisata = widget.DataWisata;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _screenwidth = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_dataWisata.title}'),
        backgroundColor: _dataWisata.materialColor,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Hero(
              tag: 'background' + _dataWisata.title,
              child: Container(
                color: _dataWisata.materialColor,
              )),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            height: 230.0,
            child: Hero(
              tag: 'image' + _dataWisata.title,
              child: Image.network(_dataWisata.image, fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 246.0,
            left: 16.0,
            child: Hero(
                tag: 'text' + _dataWisata.title,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    _dataWisata.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Positioned(
            top: 16.0,
            left: 288.0,
            child: Hero(
                tag: 'subtitle' + _dataWisata.title,
                child: Material(
                  color: Colors.transparent,
                  child: Text(_dataWisata.Descripton),
                )),
          )
        ],
      )),
    );
  }
}
