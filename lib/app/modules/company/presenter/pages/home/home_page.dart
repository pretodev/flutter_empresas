import '../../../../../../shared/components/ioasys_loading.dart';
import '../../../domain/entities/company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/company_view.dart';
import 'components/no_results_view.dart';
import 'components/results_count_view.dart';
import 'components/searcher.dart';
import 'cubit/home_cubit.dart';
import '../details/details_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeCubit> {
  void onCompanyClicked(BuildContext context, Company company) {
    Navigator.push(context, DetailsPage.route(company));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Searcher(
              onQueryChanged: controller.search,
            ),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            bloc: controller,
            builder: (_, state) => state.maybeMap(
              loading: (_) => SliverFillRemaining(child: IoasysLoading()),
              empty: (_) => SliverFillRemaining(child: NoResultsView()),
              loaded: (loaded) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate((_, index) {
                    if (index == 0)
                      return ResultsCountView(
                          countResults: loaded.companies.length);
                    final itemIdx = index - 1;
                    return CompanyView(
                      company: loaded.companies[itemIdx],
                      onClicked: (company) =>
                          onCompanyClicked(context, company),
                    );
                  }, childCount: loaded.companies.length + 1),
                );
              },
              orElse: () => SliverFillRemaining(child: Container()),
            ),
          )
        ],
      ),
    );
  }
}
