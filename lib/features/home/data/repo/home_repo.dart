import 'package:bookstore/core/networking/api_constants.dart';
import 'package:bookstore/core/networking/dio_helper.dart';
import 'package:bookstore/features/home/data/models/slider_model.dart';
import 'package:flutter/material.dart';

class HomeRepo {



  static Future<SliderResponse?>? getSlider()async{

    try{
      final response=await DioHelper.dio?.get(ApiConstants.slider);
      if(response?.statusCode==200){
        SliderResponse data=SliderResponse.fromJson(response?.data);
        return data;
      }else{
       return null;
      }
    }catch(error){
      return null;
    }


  }

}