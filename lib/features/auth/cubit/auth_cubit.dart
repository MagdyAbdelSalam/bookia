import 'package:bloc/bloc.dart';
import 'package:bookstore/features/auth/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo repo;
  AuthCubit(this.repo) : super(AuthInitial());


  Future<void> login({required String email, required String password})async{
    emit(AuthLoadingState());
    final response=await repo.login(email: email, password: password);
    if(response){
      emit(AuthSuccessState());
    }else{
      emit(AuthErrorState());
    }
  }
}
