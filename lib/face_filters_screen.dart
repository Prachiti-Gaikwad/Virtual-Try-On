import 'package:finalfinalfinalfinal/filters_datamodel.dart';
import 'package:finalfinalfinalfinal/filters_ui_design.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FaceFiltersScreen extends StatefulWidget {
  const FaceFiltersScreen({Key? key}) : super(key: key);

  @override
  State<FaceFiltersScreen> createState() => _FaceFiltersScreenState();
}

class _FaceFiltersScreenState extends State<FaceFiltersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Virtual Try On",
          style:TextStyle(
            fontSize: 14,
            letterSpacing: 5,
            color: Colors.white,
          )
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
          itemCount: FiltersDataModel.listOfFilters.length,
          itemBuilder: (context,index)
          {
            return FiltersUIDesign(
                eachFilter:FiltersDataModel.listOfFilters[index],
            );
          },
      ),
    );
  }
}
