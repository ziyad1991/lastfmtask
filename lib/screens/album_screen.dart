import 'package:flutter/material.dart';
import 'album_details_screen.dart';
import '../network/album.dart';
import '../models/album/album.dart';
import '../provider/searchprovider.dart';
import 'package:provider/provider.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  _AlbumScreenState createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AlbumData>>(
      future: getAlbumData(Provider.of<serachdata>(context).searchvalue),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Container(
                    color: Colors.black12,
                    height: 1.5,
                  );
                },
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var albumData = snapshot.data![index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlbumDetailsScreen(
                                albumName: albumData.name,
                                albumArtist: albumData.artist)),
                      ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                albumData.name,
                                style: const TextStyle(fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
