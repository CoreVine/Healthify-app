import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:healthify_app/core/di/dependency_injection.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());



}
