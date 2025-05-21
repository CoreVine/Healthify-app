import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'diets_state.dart';

class DietsCubit extends Cubit<DietsState> {
  DietsCubit() : super(DietsInitial());
}
