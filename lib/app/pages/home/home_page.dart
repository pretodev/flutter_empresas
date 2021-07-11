import 'package:empresas_flutter/app/data/models/company.dart';
import 'package:empresas_flutter/app/pages/home/components/company_view.dart';
import 'package:empresas_flutter/app/pages/home/components/ioasys_loading.dart';
import 'package:empresas_flutter/app/pages/home/components/no_results_view.dart';
import 'package:empresas_flutter/app/pages/home/components/results_count_view.dart';
import 'package:empresas_flutter/app/pages/home/components/searcher.dart';
import 'package:empresas_flutter/app/pages/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: HomePage());

  void onCompanyClicked(Company company) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Searcher(
              onQueryChanged: (query) =>
                  context.read<HomeCubit>().search(query),
            ),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (_, state) {
              if (state is HomeStateLoading) {
                return SliverFillRemaining(child: IoasysLoading());
              } else if (state is HomeStateLoaded) {
                if (state.companies.isEmpty) {
                  return SliverFillRemaining(child: NoResultsView());
                }
                return SliverList(
                  delegate: SliverChildBuilderDelegate((_, index) {
                    if (index == 1)
                      return ResultsCountView(
                          countResults: state.companies.length);
                    final itemIdx = index - 1;
                    return CompanyView(
                      company: state.companies[itemIdx],
                      onClicked: onCompanyClicked,
                    );
                  }, childCount: state.companies.length + 1),
                );
              }
              return SliverToBoxAdapter(child: Container());
            },
          )
        ],
      ),

      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [

      //   ],
      // ),
    );
  }
}
