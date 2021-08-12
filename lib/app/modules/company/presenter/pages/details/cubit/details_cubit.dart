import 'package:bloc/bloc.dart';
import '../../../../domain/entities/company.dart';
import '../../../../domain/repositories/company_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit({required CompanyRepository companyRepository})
      : _companyRepository = companyRepository,
        super(DetailsState.loading());

  final CompanyRepository _companyRepository;

  void loadData(int id) async {
    emit(DetailsState.loading());
    final result = await _companyRepository.byId(id).run();
    final newState = result.fold(
      (error) => DetailsState.error(error),
      (company) => DetailsState.loaded(company),
    );
    emit(newState);
  }
}
