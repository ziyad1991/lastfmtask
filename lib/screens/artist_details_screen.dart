import 'package:flutter/material.dart';
import '../models/artist/artistdetails.dart';
import '../network/artist_details.dart';

class ArtistDetailsUI extends StatelessWidget {
  final String artist;

  ArtistDetailsUI({required this.artist});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ArtistDetailModel>(
      future: getArtistDetailsData(artist),
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
                      // Text(snapshot.data!.album.artist),
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Container(
                  color: Colors.blueGrey.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Summary',
                        ),
                        Text(snapshot.data!.bio.summary),
                        const SizedBox(height: 20.0),
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
