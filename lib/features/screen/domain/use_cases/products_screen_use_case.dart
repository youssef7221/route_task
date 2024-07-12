import 'package:either_dart/either.dart';
import 'package:route_flutter/features/screen/data/models/ProductsModel.dart';

import '../../../../core/error/failuers.dart';
import '../repositories/products_Screen_repo.dart';

class ProductsScreenUseCase {
  ProductsScreenRepo productScreenRepo;

  ProductsScreenUseCase(this.productScreenRepo);
  Future<Either<Failures, ProductsModel>> call(String search) =>
      productScreenRepo.getProductList(search);
}