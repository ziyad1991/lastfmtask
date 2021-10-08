import 'package:flutter/material.dart';
import '../network/album_details.dart';
import '../models/album/albumdetails.dart';

class AlbumDetailsScreen extends StatelessWidget {
  final String albumName;
  final String albumArtist;

  const AlbumDetailsScreen(
      {required this.albumName, required this.albumArtist});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AlbumDetailModel>(
      future: getAlbumDetailsData(albumName, albumArtist),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scaffold(
              appBar: AppBar(
                title: Center(
                  child: Column(
                    children: [
                      Text(snapshot.data!.name),
                      Text(snapshot.data!.artist),
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Container(
                  color: Colors.blueGrey.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Album Tracks',
                        ),
                        SizedBox(height: 20.0),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: snapshot.data!.tracks.track.length,
                            itemBuilder: (context, index) {
                              return Card(
                                color: Colors.white24,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('${index + 1}.'),
                                      SizedBox(width: 5),
                                      Text(snapshot
                                          .data!.tracks.track[index].name),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
