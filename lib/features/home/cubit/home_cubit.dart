import 'package:bloc/bloc.dart';
import 'package:bookstore/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

import '../data/models/slider_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());


  getSlider()async{
    emit(HomeLoadingState());
    final response=await HomeRepo.getSlider();
    if(response!=null){
      emit(HomeSuccessState(sliders: response.data?.sliders??[]));
    }else{
      emit(HomeErrorState());
    }

  }
}
