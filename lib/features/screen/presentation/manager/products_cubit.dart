import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:meta/meta.dart';
import 'package:route_flutter/core/api/api_manager.dart';
import 'package:route_flutter/features/screen/data/data_sources/products_screen_remote_ds.dart';
import 'package:route_flutter/features/screen/data/data_sources/products_screen_remote_ds_imp.dart';
import 'package:route_flutter/features/screen/data/models/ProductsModel.dart';
import 'package:route_flutter/features/screen/data/repositories/products_screen_repo_imp.dart';
import 'package:route_flutter/features/screen/domain/use_cases/products_screen_use_case.dart';
import '../../domain/repositories/products_Screen_repo.dart';
part 'products_state.dart';
class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial(
  )){
    getData("");
  }
 ProductsModel? productsModel;

  Future<void> getData(String search) async{
    ApiManager apiManager = ApiManager();
    ProductsScreenRemoteDs productsScreenRemoteDs = ProductsScreenRemoteDsImp(apiManager);
    ProductsScreenRepo productsScreenRepoImp = ProductsScreenRepoImp(productsScreenRemoteDs);
    ProductsScreenUseCase productsScreenUseCase = ProductsScreenUseCase(productsScreenRepoImp);
    var result = await productsScreenUseCase.call(search);
     result.fold((l){
       emit(ProductsFail());
     },(r){
        productsModel = r;
       emit(ProductsSuccess());
    });
  }
}
