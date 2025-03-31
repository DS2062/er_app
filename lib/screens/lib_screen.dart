import 'dart:io';

import 'package:er_app/screens/pdf_list.dart';
import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:permission_handler/permission_handler.dart';

class LibScreen extends StatefulWidget {
  const LibScreen({super.key});

  @override
  State<LibScreen> createState() => _LibScreenState();
}

class _LibScreenState extends State<LibScreen> {
  List<String> pdfFiles = [];
  List<String> filteredFiles = [];
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    baseDirectory();
  }
Future<void> baseDirectory() async {
  PermissionStatus permissionStatus = await Permission.manageExternalStorage.request();
  if (permissionStatus.isGranted) {
    var rootDirectory = await ExternalPath.getExternalStorageDirectories();
    await getFiles(rootDirectory!.first);
  }
}
  //* para buscar en las carpetas
  Future<void> getFiles(String directoryPath) async {
    try {
      var rootDirectory = Directory(directoryPath);
      var directories = rootDirectory.list(recursive: false);

      await for (var element in directories) {
        if (element is File) {
          if (element.path.endsWith('.pdf')) {
            setState(() {
              pdfFiles.add(element.path);
              filteredFiles = pdfFiles;
            });
          }
        } else {
          await getFiles(element.path);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  //* para fitrar
  void filterFiles(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredFiles = pdfFiles;
      });
    } else {
      setState(() {
        filteredFiles =
            pdfFiles
                .where(
                  (file) => file
                      .split('/')
                      .last
                      .toLowerCase()
                      .contains(query.toLowerCase()),
                )
                .toList();
      });
    }
  }
//* ######################################  ZONA UTIL ############################################################################
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Biblioteca", style: TextStyle(fontSize: 25))),
      body:
          filteredFiles.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: filteredFiles.length,
                itemBuilder: (context, index) {
                  String filePath = filteredFiles[index];
                  String filename = path.basename(filePath);
                  return Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(
                        filename,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.picture_as_pdf,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => PdfViewerScreen(
                                  pdfName: filename,
                                  pdfPath: filePath,
                                ),
                          ),
                        );
                      }, // Icon
                    ), // ListTile
                  ); 
                },
              ), 
          floatingActionButton: FloatingActionButton(onPressed: (){baseDirectory();}, child:Icon(Icons.refresh)),
    );
  }
}