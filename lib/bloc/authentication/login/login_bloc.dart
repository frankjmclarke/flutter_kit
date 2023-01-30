import 'package:bloc/bloc.dart';
import 'package:devkitflutter/model/integration/login_model.dart';
import 'package:devkitflutter/network/api_provider.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()){
    on<Login>(_login);
  }
}

void _login(Login event, Emitter<LoginState> emit) async {
  ApiProvider _apiProvider = ApiProvider();

  emit(LoginWaiting());
  try {
    List<LoginModel> data = await _apiProvider.login(event.email, event.password, event.apiToken);
    emit(LoginSuccess(loginData: data));
  } catch (ex){
    if(ex != 'cancel'){
      emit(LoginError(errorMessage: ex.toString()));
    }
  }
}