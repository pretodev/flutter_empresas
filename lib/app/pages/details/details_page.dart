import 'package:cached_network_image/cached_network_image.dart';
import 'package:empresas_flutter/app/data/models/company.dart';
import 'package:empresas_flutter/app/components/ioasys_loading.dart';
import 'package:empresas_flutter/app/utils/choose_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cubit/details_cubit.dart';

class DetailsPage extends StatelessWidget {
  static Route route(Company company) {
    return MaterialPageRoute<void>(
      builder: (_) => DetailsPage(company: company),
    );
  }

  const DetailsPage({Key? key, required this.company}) : super(key: key);

  final Company company;

  @override
  Widget build(BuildContext context) {
    context.read<DetailsCubit>().loadData(company.id);
    final descriptionStyle = GoogleFonts.rubik(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w300,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(company.name),
        centerTitle: true,
      ),
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          if (state is DetailsLoaded) {
            print(state.company.photoUrl);
            return SingleChildScrollView(
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: state.company.photoUrl,
                    height: 120.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorWidget: (_, __, error) => Container(
                      alignment: Alignment.center,
                      color: chooseColor(company.id),
                      child: Text(company.name),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      state.company.description,
                      style: descriptionStyle,
                    ),
                  ),
                ],
              ),
            );
          }
          return Center(child: IoasysLoading());
        },
      ),
    );
  }
}
