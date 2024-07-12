import 'package:either_dart/src/either.dart';
import 'package:route_flutter/core/api/api_manager.dart';
import 'package:route_flutter/core/api/end_points.dart';
import 'package:route_flutter/core/error/failuers.dart';
import 'package:route_flutter/features/screen/data/data_sources/products_screen_remote_ds.dart';
import 'package:dio/dio.dart';
import '../models/ProductsModel.dart';

class ProductsScreenRemoteDsImp implements ProductsScreenRemoteDs{
  ApiManager apiManager ;
  ProductsScreenRemoteDsImp(this.apiManager);
  @override
  Future<Either<Failures, ProductsModel>> getProductsListDs(String search) async{
  try{
    Response response = await apiManager.getDio("${EndPoints.search}$search");
    ProductsModel productsModel = ProductsModel.fromJson(response.data);
    return Right(productsModel);
  }
  catch (e){
    return Left(RemoteFailure(e.toString()));
  }
  }

}