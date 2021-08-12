import 'package:bloc/bloc.dart';
import '../../../../domain/entities/company.dart';
import '../../../../domain/repositories/company_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required CompanyRepository companyRepository})
      : _companyRepository = companyRepository,
        super(HomeState.noQuery());

  final CompanyRepository _companyRepository;

  void search(String query) async {
    if (query.isEmpty) return emit(HomeState.noQuery());

    emit(HomeState.loading());
    final result = await _companyRepository.search(query).run();
    final newState = result.fold(
      (error) => HomeState.error(error: error),
      (companies) => companies.isEmpty
          ? HomeState.empty()
          : HomeState.loaded(companies: companies),
    );
    emit(newState);
  }
}
