import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../shared/components/ioasys_loading.dart';
import '../../../../../../shared/helpers/choose_color.dart';
import '../../../domain/entities/company.dart';
import 'cubit/details_cubit.dart';

class DetailsPage extends StatefulWidget {
  static Route route(Company company) {
    return MaterialPageRoute<void>(
      builder: (_) => DetailsPage(company: company),
    );
  }

  const DetailsPage({Key? key, required this.company}) : super(key: key);

  final Company company;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends ModularState<DetailsPage, DetailsCubit> {
  @override
  void initState() {
    super.initState();
    controller.loadData(widget.company.id);
  }

  @override
  Widget build(BuildContext context) {
    final descriptionStyle = GoogleFonts.rubik(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w300,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.company.name),
        centerTitle: true,
      ),
      body: BlocBuilder<DetailsCubit, DetailsState>(
        bloc: controller,
        builder: (context, state) => state.maybeMap(
          loaded: (data) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: data.company.photoUrl,
                    height: 120.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorWidget: (_, __, error) => Container(
                      alignment: Alignment.center,
                      color: chooseColor(widget.company.id),
                      child: Text(widget.company.name),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      data.company.description,
                      style: descriptionStyle,
                    ),
                  ),
                ],
              ),
            );
          },
          orElse: () => Center(child: IoasysLoading()),
        ),
      ),
    );
  }
}
