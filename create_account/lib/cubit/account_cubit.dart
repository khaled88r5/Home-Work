import 'dart:developer';

import 'package:create_account/cubit/account_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());

  Future<void> valiate({
    required String fname,
    required String lname,
    required String account,
    required String password,
  }) async {
    emit(CreateAccountLoading());
    await Future.delayed(Duration(seconds: 2));
    if ((fname.isNotEmpty) &&
        (lname.isNotEmpty) &&
        (account.isNotEmpty) &&
        (password.isNotEmpty)) {
      emit(CreateAccountSuccess());
      log("success");
    } else {
      emit(CreateAccountError());
      log("error");
      print(fname);
    }
  }
}
