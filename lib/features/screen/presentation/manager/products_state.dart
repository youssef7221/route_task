part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}
final class NoConnection extends ProductsState{}
final class ProductsSuccess extends ProductsState {}
final class ProductsFail extends ProductsState {}

