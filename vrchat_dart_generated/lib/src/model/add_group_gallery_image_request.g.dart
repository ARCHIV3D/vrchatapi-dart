// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_group_gallery_image_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddGroupGalleryImageRequest _$AddGroupGalleryImageRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AddGroupGalleryImageRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['fileId'],
        );
        final val = AddGroupGalleryImageRequest(
          fileId: $checkedConvert('fileId', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AddGroupGalleryImageRequestToJson(
        AddGroupGalleryImageRequest instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
    };
