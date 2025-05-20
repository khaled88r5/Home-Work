import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/product.dart';
import '../services/product_service.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> fetchProducts() async {
    emit(ProductLoading());
    try {
      final products = await ProductService.getAllProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

  Future<void> addProduct(Product product) async {
    emit(ProductLoading());
    try {
      await ProductService.addProduct(product);
      await fetchProducts();
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

  Future<void> updateProduct(Product product) async {
    emit(ProductLoading());
    try {
      await ProductService.updateProduct(product);
      await fetchProducts();
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

  Future<void> deleteProduct(int id) async {
    emit(ProductLoading());
    try {
      await ProductService.deleteProduct(id);
      await fetchProducts();
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}
