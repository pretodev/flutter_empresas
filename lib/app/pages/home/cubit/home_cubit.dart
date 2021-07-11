import 'package:bloc/bloc.dart';
import 'package:empresas_flutter/app/data/models/company.dart';
import 'package:empresas_flutter/app/data/repositories/interfaces/company_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required CompanyRepository companyRepository})
      : _companyRepository = companyRepository,
        super(HomeState.empty());

  final CompanyRepository _companyRepository;

  void search(String query) async {
    if (query.isEmpty) return emit(HomeState.empty());

    emit(HomeState.loading());
    final result = await _companyRepository.search(query).run();
    result.fold(
      (error) => HomeState.error(error: error),
      (companies) => HomeState.loaded(companies: companies),
    );
  }
}
