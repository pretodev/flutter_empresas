import 'infra/data/repositories/company_repository_impl.dart';
import 'infra/external/ioasys_api/company_data_source_impl.dart';
import 'presenter/pages/details/cubit/details_cubit.dart';
import 'presenter/pages/details/details_page.dart';
import 'presenter/pages/home/cubit/home_cubit.dart';
import 'presenter/pages/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CompanyModule extends Module {
  @override
  final binds = [
    Bind.lazySingleton((i) => CompanyDataSourceImpl(oAuth: i())),
    Bind.lazySingleton((i) => CompanyRepositoryImpl(companyDatasource: i())),
    Bind.factory((i) => HomeCubit(companyRepository: i())),
    Bind.factory((i) => DetailsCubit(companyRepository: i())),
  ];

  @override
  final routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
    ChildRoute('/details', child: (_, args) => DetailsPage(company: args.data)),
  ];
}
