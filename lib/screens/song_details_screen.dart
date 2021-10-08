import 'package:flutter/material.dart';
import '../models/song/songdetails.dart';
import '../network/song_details.dart';

class TrackDetailsUI extends StatelessWidget {
  final String artist;
  final String trackName;

  const TrackDetailsUI({required this.trackName, required this.artist});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<TrackModel>(
      future: getTrackDetailsData(trackName, artist),
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
                    ],
                  ),
                ),
              ),
              body: Container(
                color: Colors.yellow.shade50,
                child: Column(
                  children: [
                    if (snapshot.data!.wiki != null)
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Summary :")),
                      ),
                    if (snapshot.data!.wiki != null)
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(snapshot.data!.wiki!.summary),
                      ),
                  ],
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

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('UrlLauchner'),
//         ),
//         body: new Center(
//           child: new RichText(
//             text: new TextSpan(
//               children: [
//                 new TextSpan(
//                   text: 'This is no Link, ',
//                   style: new TextStyle(color: Colors.black),
//                 ),
//                 new TextSpan(
//                   text: 'but this is',
//                   style: new TextStyle(color: Colors.blue),
//                   recognizer: new TapGestureRecognizer()
//                     ..onTap = () { launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
//                     },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
