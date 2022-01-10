import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_fp_with_gext/app/data/models/pokemon.dart';

part 'request_status.freezed.dart';
part 'request_status.g.dart';

@freezed
class RequestStatus with _$RequestStatus {
  factory RequestStatus.initial() = InitialRequestStatus;
  factory RequestStatus.loading() = LoadingRequestStatus;
  factory RequestStatus.success(Pokemon pokemon) = SuccessRequestStatus;
  factory RequestStatus.error(String error) = ErrorRequestStatus;

  factory RequestStatus.fromJson(Map<String, dynamic> json) =>
      _$RequestStatusFromJson(json);
}
