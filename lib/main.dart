import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:healthify_app/core/observer/bloc_observer.dart';
import 'package:healthify_app/core/utils/functions/check_authorized_user.dart';
import 'package:healthify_app/healthify_app.dart';
import 'core/di/dependency_injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait<void>(
      [ScreenUtil.ensureScreenSize(), setupGetIt(), checkNavigation(), dotenv.load(fileName: ".env")]);
  Bloc.observer = MyBlocObserver();

  runApp(const HealthifyApp());
}
