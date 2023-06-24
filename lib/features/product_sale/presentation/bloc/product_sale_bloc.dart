import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_sale_event.dart';
part 'product_sale_state.dart';

class ProductSaleBloc extends Bloc<ProductSaleEvent, ProductSaleState> {
  ProductSaleBloc() : super(ProductSaleInitial()) {
    on<ProductSaleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
