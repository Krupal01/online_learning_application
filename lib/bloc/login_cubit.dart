import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../cubit_states/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
}
