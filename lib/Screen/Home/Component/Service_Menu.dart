import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceMenu extends StatelessWidget {
  const ServiceMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 27),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ServiceMenuBTN(
                svgpath: "assets/icons/pln.svg",
                text: "PLN",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/pulsa.svg",
                text: "Pulsa",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/internet.svg",
                text: "Paket Data",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/pdam.svg",
                text: "Air PDAM",
                onpress: () {},
              ),
            ],
          ),
          SizedBox(height: 23),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ServiceMenuBTN(
                svgpath: "assets/icons/bpjs.svg",
                text: "BPJS",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/tv.svg",
                text: "Internet & TV kabel",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/pesawat.svg",
                text: "Tiket Pesawat",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/hotel.svg",
                text: "Hotel",
                onpress: () {},
              ),
            ],
          ),
          SizedBox(height: 23),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ServiceMenuBTN(
                svgpath: "assets/icons/seragam.svg",
                text: "Seragam PNS",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/pinjaman.svg",
                text: "Pinjaman",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/kartukredit.svg",
                text: "Kartu Kredit",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/lainnya.svg",
                text: "Lainnya",
                onpress: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceMenuBTN extends StatelessWidget {
  final Function onpress;
  final String svgpath;
  final String text;
  const ServiceMenuBTN({
    Key key,
    this.svgpath,
    this.text,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 72) / 4,
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            svgpath,
            height: 45,
          ),
          SizedBox(height: 4),
          Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ))
        ],
      ),
    );
  }
}
