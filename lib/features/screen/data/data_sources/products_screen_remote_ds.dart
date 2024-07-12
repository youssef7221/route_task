import 'package:either_dart/either.dart';
import 'package:route_flutter/core/error/failuers.dart';

import '../models/ProductsModel.dart';

abstract class ProductsScreenRemoteDs {
 Future<Either<Failures,ProductsModel>> getProductsListDs(String search);
}