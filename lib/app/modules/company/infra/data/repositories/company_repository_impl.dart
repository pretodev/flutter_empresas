import 'package:fpdart/fpdart.dart';

import '../../../domain/entities/company.dart';
import '../../../domain/repositories/company_repository.dart';
import '../datasources/company_datasource.dart';

class CompanyRepositoryImpl extends CompanyRepository {
  final CompanyDatasource _companyDatasource;

  const CompanyRepositoryImpl({
    required CompanyDatasource companyDatasource,
  }) : _companyDatasource = companyDatasource;

  @override
  TaskEither<Exception, List<Company>> search(String query) {
    return TaskEither(() async {
      final companies = await _companyDatasource.search(query);
      return Either.right(companies);
    });
  }

  @override
  TaskEither<Exception, Company> byId(int id) {
    return TaskEither(() async {
      final company = await _companyDatasource.getById(id);
      return Either.right(company);
    });
  }
}
