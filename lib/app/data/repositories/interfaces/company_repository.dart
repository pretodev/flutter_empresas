import 'package:empresas_flutter/app/data/models/company.dart';
import 'package:fpdart/fpdart.dart';

abstract class CompanyRepository {
  const CompanyRepository();

  TaskEither<Exception, List<Company>> search(String query);

  TaskEither<Exception, Company> byId(int id);
}
