import '../../../domain/entities/company.dart';

abstract class CompanyDatasource {
  const CompanyDatasource();

  Future<List<Company>> search(String query);

  Future<Company> getById(int id);
}
