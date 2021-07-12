import 'package:empresas_flutter/app/data/models/company.dart';

abstract class CompanyDatasource {
  const CompanyDatasource();

  Future<List<Company>> search(String query);

  Future<Company> getById(int id);
}
