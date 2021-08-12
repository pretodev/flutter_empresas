import 'package:fpdart/fpdart.dart';

import '../entities/company.dart';

abstract class CompanyRepository {
  const CompanyRepository();

  TaskEither<Exception, List<Company>> search(String query);

  TaskEither<Exception, Company> byId(int id);
}
