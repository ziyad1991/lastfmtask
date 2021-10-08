import 'package:flutter/material.dart';
import 'package:thelastfmtest_app/provider/searchprovider.dart';
import 'song_details_screen.dart';
import '../network/song.dart';
import '../models/song/song.dart';
import '../provider/searchprovider.dart';
import 'package:provider/provider.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({Key? key}) : super(key: key);

  @override
  _SongScreenState createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TrackData>>(
      future: getTrackData(Provider.of<serachdata>(context).searchvalue),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
                separatorBuilder: (ctx, index) {
                  return Container(
                    height: 1.5,
                    color: Colors.black12,
                  );
                },
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var trackData = snapshot.data![index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrackDetailsUI(
                                  trackName: trackData.name,
                                  artist: trackData.artist,
                                )),
                      ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                trackData.name,
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
