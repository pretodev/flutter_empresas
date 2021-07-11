import 'package:bloc/bloc.dart';
import 'package:empresas_flutter/app/data/models/company.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.empty());

  void search(String query) async {
    if (query.isEmpty)
      emit(HomeState.empty());
    else {
      emit(HomeState.loading());
      await Future.delayed(Duration(seconds: 2));
      emit(HomeState.loaded(companies: []));
    }
  }
}
