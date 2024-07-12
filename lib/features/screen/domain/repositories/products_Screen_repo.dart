import 'package:either_dart/either.dart';
import 'package:route_flutter/core/error/failuers.dart';
import 'package:route_flutter/features/screen/data/models/ProductsModel.dart';


abstract class ProductsScreenRepo {
Future<Either<Failures,ProductsModel>> getProductList(String search);
}