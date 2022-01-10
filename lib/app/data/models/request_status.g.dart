// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialRequestStatus _$$InitialRequestStatusFromJson(
        Map<String, dynamic> json) =>
    _$InitialRequestStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialRequestStatusToJson(
        _$InitialRequestStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadingRequestStatus _$$LoadingRequestStatusFromJson(
        Map<String, dynamic> json) =>
    _$LoadingRequestStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingRequestStatusToJson(
        _$LoadingRequestStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SuccessRequestStatus _$$SuccessRequestStatusFromJson(
        Map<String, dynamic> json) =>
    _$SuccessRequestStatus(
      Pokemon.fromJson(json['pokemon'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessRequestStatusToJson(
        _$SuccessRequestStatus instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon,
      'runtimeType': instance.$type,
    };

_$ErrorRequestStatus _$$ErrorRequestStatusFromJson(Map<String, dynamic> json) =>
    _$ErrorRequestStatus(
      json['error'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorRequestStatusToJson(
        _$ErrorRequestStatus instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
