import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
class Company with _$Company {
  const Company._();

  const factory Company({
    required int id,
    required String name,
  }) = _Company;
}
