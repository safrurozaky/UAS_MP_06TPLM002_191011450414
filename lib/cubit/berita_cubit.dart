import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_uas_berita/request/berita_request.dart';
import 'package:flutter_uas_berita/model/berita_model.dart';

part 'berita_state.dart';

class BeritaCubit extends Cubit<BeritaState> {
  BeritaCubit() : super(BeritaInitial());

  final BeritaRequest beritaRequest = BeritaRequest();

  BeritaModel beritaModel = BeritaModel();

  getDataBerita() async {
    emit(BeritaInitial());
    beritaModel = await beritaRequest.getBerita();
    emit(DataBerita(beritaModel));
  }
}
//#safrurozakycode