import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../data/data.dart';
import '../model/wallpaper_model.dart';
import '../widget/widget.dart';

class Search extends StatefulWidget {
  const Search({super.key, required this.searchQuery});
  final String searchQuery;

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchController = new TextEditingController();
  List<WallpaperModel> wallpapers = [];

  getSearchWallpapers(String query) async {
    var apiUrl =
        Uri.parse("https://api.pexels.com/v1/search?query=$query&per_page=80");
    var response = await http.get(apiUrl, headers: {"Authorization": apiKey});

    print(response.body.toString());

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      //print(element);

      WallpaperModel wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });

    setState(() {});
  }

  @override
  void initState() {
    getSearchWallpapers(widget.searchQuery);
    super.initState();
    searchController.text = widget.searchQuery;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: brandName(),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xfff5f8fd)),
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          24), //use 0xff and then the color code to apply color code.
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                              hintText: "search", border: InputBorder.none),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            getSearchWallpapers(searchController.text);
                          },
                          child: Container(child: Icon(Icons.search))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                wallpapersList(wallpapers: wallpapers, context: context)
              ],
            ),
          ),
        ));
  }
}
