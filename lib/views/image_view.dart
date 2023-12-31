import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class ImgView extends StatefulWidget {
  const ImgView({super.key, required this.imgUrl});
  final String imgUrl;

  @override
  State<ImgView> createState() => _ImgViewState();
}

class _ImgViewState extends State<ImgView> {
  var filePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgUrl,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                widget.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    _save();
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2,
                          color: Color(0xff1c1b1b).withOpacity(0.8),
                        ),
                      ),
                      Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Color(0x36FFFFFF),
                                Color(0x36EFFFFF)
                              ])),
                          child: Column(
                            children: [
                              Text("Set Wallpaper",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                              Text(
                                "Image will be saved in gallery",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Cancel",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _save() async {
    if (Platform.isAndroid) {
      await _askPermission();
    }

    var response = await Dio()
        .get(widget.imgUrl, options: Options(responseType: ResponseType.bytes));
    final result =
        await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
    print(result);
    Navigator.pop(context);
  }

  _askPermission() async {
    if (Platform.isIOS) {
      PermissionStatus permissions = await Permission.photos.request();
    } else {
      PermissionStatus permission = await Permission.storage.status;
    }
  }
}
