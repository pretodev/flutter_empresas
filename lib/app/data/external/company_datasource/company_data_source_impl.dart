import 'package:empresas_flutter/app/data/external/company_datasource/company_datasource.dart';
import 'package:empresas_flutter/app/data/external/ioasys_oauth/oauth.dart';
import 'package:empresas_flutter/app/data/models/company.dart';

class CompanyDataSourceImpl extends CompanyDatasource {
  final OAuth _oAuth;

  const CompanyDataSourceImpl({required OAuth oAuth}) : _oAuth = oAuth;

  @override
  Future<List<Company>> search(String query) async {
    final response = await _oAuth.client
        .get<Map<String, dynamic>>('/enterprises?name=$query');
    final companiesMap = response.data!['enterprises'] as Iterable;
    return companiesMap
        .map((map) => Company(id: map['id'], name: map['enterprise_name']))
        .toList();
  }

  @override
  Future<Company> getById(int id) async {
    final response =
        await _oAuth.client.get<Map<String, dynamic>>('/enterprises/$id');
    final map = response.data!['enterprise'] as Map<String, dynamic>;
    return Company(
      id: map['id'],
      name: map['enterprise_name'],
      description: map['description'],
      photoUrl: 'https://empresas.ioasys.com.br${map['photo']}',
    );
  }
}
