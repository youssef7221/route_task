import 'package:either_dart/src/either.dart';

import 'package:route_flutter/core/error/failuers.dart';
import 'package:route_flutter/features/screen/data/data_sources/products_screen_remote_ds.dart';


import '../../domain/repositories/products_Screen_repo.dart';
import '../models/ProductsModel.dart';

class ProductsScreenRepoImp implements ProductsScreenRepo{
  ProductsScreenRemoteDs productsScreenRemoteDs;
  ProductsScreenRepoImp(this.productsScreenRemoteDs);
  @override
  Future<Either<Failures, ProductsModel>> getProductList(String search) {
    return productsScreenRemoteDs.getProductsListDs(search);
  }

}