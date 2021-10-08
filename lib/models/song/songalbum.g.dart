// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songalbum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackAlbumModel _$TrackAlbumModelFromJson(Map<String, dynamic> json) {
  return TrackAlbumModel(
    title: json['title'] as String,
    artist: json['artist'] as String,
  );
}

Map<String, dynamic> _$TrackAlbumModelToJson(TrackAlbumModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'artist': instance.artist,
    };
