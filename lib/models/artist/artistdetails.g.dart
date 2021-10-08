// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artistdetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistDetailModel _$ArtistDetailModelFromJson(Map<String, dynamic> json) {
  return ArtistDetailModel(
    name: json['name'] as String,
    bio: BioModel.fromJson(json['bio'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistDetailModelToJson(ArtistDetailModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bio': instance.bio,
    };
