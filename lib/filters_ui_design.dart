
import 'package:finalfinalfinalfinal/filters.dart';
import 'package:finalfinalfinalfinal/screen/earring.dart';
import 'package:finalfinalfinalfinal/screen/necklace.dart';
import 'package:finalfinalfinalfinal/screen/product_list.dart';
import 'package:finalfinalfinalfinal/screen/shoe.dart';
import 'package:finalfinalfinalfinal/screen/watch.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.instagram.com/ar/1432409943982050/?ch=MDk4Y2NhMmE3YWI4OWJlNzk1ZGY1ZTg1YWNhYmI1NjU%3D');


class FiltersUIDesign extends StatelessWidget {
  final Filters eachFilter;

  const FiltersUIDesign({super.key, required this.eachFilter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (c)=> ARFaceView(filterSelected:eachFilter.image)));
          if (eachFilter.name == "Specs") {
            // _launchUrl('https://demo.deepar.ai/ads/glasses/');
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductList()));
          }
          // if (eachFilter.name == "Necklace") {
          //   // _launchUrl('https://try.deepar.ai/wrist/rolex');
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => NecklaceList()));
          // }
          if (eachFilter.name == "Watch") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WatchList()));
          }
          if (eachFilter.name == "Ear ring") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EarringList()));
          }
          if (eachFilter.name == "Shoe") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShoeList()));
          }
        },
        child: Card(
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(
                eachFilter.image,
                height: 150,
                width: 150,
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    eachFilter.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),);
  }


  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $url');
    }
  }

}
