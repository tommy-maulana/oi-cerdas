import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PNSMenu extends StatelessWidget {
  const PNSMenu({
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
          Text(
            "Layanan Ogan Ilir",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 6),
          Text(
            "Layanan Masyarakat dan Internal Ogan Ilir",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ServiceMenuBTN(
                svgpath: "assets/icons/ambulance.svg",
                text: "Ambulance",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/jenazah.svg",
                text: "Mobil Jenazah",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/sim.svg",
                text: "SIM Online",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/cctv.svg",
                text: "Live CCTV",
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
                svgpath: "assets/icons/report.svg",
                text: "Pengaduan",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/izin.svg",
                text: "Perizinan",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/simpeg.svg",
                text: "SIMPEG",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/simda.svg",
                text: "SIMDA",
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
                svgpath: "assets/icons/kinerja.svg",
                text: "e-Kinerja",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/planning.svg",
                text: "e-Planning",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/damkar.svg",
                text: "Pemadam Kebakaran",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/umkm.svg",
                text: "UMKM",
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
