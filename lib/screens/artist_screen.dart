import 'package:flutter/material.dart';
import '../network/artist.dart';
import '../models/artist/artist.dart';
import '../provider/searchprovider.dart';
import 'package:provider/provider.dart';
import '../screens/artist_details_screen.dart';

class ArtistScreen extends StatefulWidget {
  const ArtistScreen({Key? key}) : super(key: key);

  @override
  _ArtistScreenState createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TheArtistData>>(
      future: getTheArtistData(Provider.of<serachdata>(context).searchvalue),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
                separatorBuilder: (ctx, index) {
                  return Container(
                    color: Colors.black12,
                    height: 1.5,
                  );
                },
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var artistData = snapshot.data![index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ArtistDetailsUI(artist: artistData.name)),
                      ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                artistData.name,
                                style: const TextStyle(fontSize: 20.0),
                              ),
                              //Text('by ${artistData.image}'),
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
